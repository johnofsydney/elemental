console.log(THREE);

// This code is based on a code along during the GA course conducted by @threequal
// I've addapted it to suit this application

let cube = null;
let sphere = null;
let pointLight = null;

let step = 0;
let controls = null;
let gui = null;
let electrons = []
let shells = []

const renderer = new THREE.WebGLRenderer({
  antialias: true
});

renderer.shadowMap.enabled = true;
renderer.setPixelRatio(window.devicePixelRatio || 1);

const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(
  45,
  window.innerWidth / window.innerHeight,
  0.1,
  1000
);

camera.position.x = -30;
camera.position.y = 30;
camera.position.z = 30;
camera.lookAt(scene.position);

// when we add new before the creation of a function it does two things WRT "this":
// It sets "this" to a new empty function
// It automatically returns the keyword "this" (ie that empty object)
const controller = new function () {
  this.rotationSpeed = 1;
}

const animate = () => {

  // console.log(electrons.length);
  increment = controller.rotationSpeed / 100
  step += increment;
  cube.rotation.x += increment
  cube.rotation.y += increment
  cube.rotation.z += increment


  for (var i = 0; i < electrons.length; i++) {
    a = 5 * ( 1 + i )  // amplitude increases per shell
    orth = (i + 1) % 2 // makes each shell rotated 90 degrees from the last in the z plane

    for (var j = 0; j < electrons[i].length; j++) {
      offset = (j / electrons[i].length) * 2 * Math.PI // spaces electrons evenly throughout circle
      electrons[i][j].position.x = ( a * (Math.sin(step / a * 100 + (offset ) )))
      electrons[i][j].position.y = ( orth * a * (Math.cos(step /  a* 100 + offset )))
      electrons[i][j].position.z = ((orth -1 ) * a * (Math.cos(step / a * 100 + offset )))
    }
  }


  // change position of meshes
  // change rotation of mesh
  // rerender using the scene and the camera
  renderer.render(scene, camera);
  //showing the user the updated scene
  requestAnimationFrame(animate);
}


const addAxes = () => {
  const axes = new THREE.AxesHelper(20);
  scene.add(axes);
};


const addPointLight = () => {
  pointLight = new THREE.PointLight(0xffff00, 3, 200);
  // pointLight.position.set(-40, 60, 20)
  pointLight.position.x = -40;
  pointLight.position.y = 60;
  pointLight.position.z = 20;
  pointLight.castShadow = true;
  pointLight.shadow.mapSize.width = 2048;
  pointLight.shadow.mapSize.height = 2048;
  scene.add(pointLight)
}


const addCube = () => {
  //1 create material
  //2 create geomoetry
  //3 create mesh (from geometry and material)
  //4 add mesh to scene
  //5 re-render (scene and camera)
  const cubeMaterial = new THREE.MeshLambertMaterial({
    color: 0xff0606
    // wireframe: true
  });
  const cubeGeometry = new THREE.BoxGeometry(2,2,2);

  cube = new THREE.Mesh(cubeGeometry, cubeMaterial);
  cube.position.x = 0
  cube.position.y = 0
  cube.position.z = 0

  cube.castShadow = true;
  scene.add(cube)
}

const addSphere = (e) => {
  eArr = []
  if ( typeof(e) === 'number' ) {
    eArr.push(parseInt(e))
  } else {
    eArr = e.split(',')
  }

  console.log(`The array of electrons is ${eArr}. No error trapping for wrong format`);

  const sphereGeometry = new THREE.SphereGeometry(1, 20, 20);
  const sphereMaterial = new THREE.MeshLambertMaterial({
    color: 0x00a3ff
  })

  //
  temp = []
  for (var i = 0; i < eArr.length; i++) {
    n = parseInt(eArr[i])
    for (var j = 1; j <= n; j++) {
      // console.log(i, n)
      sphere = new THREE.Mesh(sphereGeometry, sphereMaterial)
      sphere.position.x = 0
      sphere.position.y = 0
      sphere.position.z = 0


      sphere.castShadow = true;
      sphere.receiveShadow = true;

      scene.add(sphere)

      temp.push(sphere)
    }

    electrons.push(temp);
    temp = []
  }


}

const addPlane = () => {
  //Mesh is geometry AND material
  const planeGeometry = new THREE.PlaneGeometry(100, 100);
  const planeMaterial = new THREE.MeshLambertMaterial({
    color: 0xcfd8dc,
    side: THREE.DoubleSide,
    // wireframe: true
  });
  const plane = new THREE.Mesh(planeGeometry, planeMaterial);
  plane.rotation.x = -0.5 * Math.PI;
  plane.position.x = 20;
  plane.position.y = -30;
  plane.position.z = 0;


  plane.receiveShadow = true;
  scene.add(plane)

}

const init = (e) => {
  renderer.setClearColor( 0xeceff1);
  renderer.setSize(window.innerWidth / 2, window.innerHeight / 2)

  addAxes();
  addPlane();
  addCube();
  addSphere(e);
  addPointLight();



  controls = new THREE.OrbitControls(camera, renderer.domElement);
  // This is for mouse control over rotation and closeness

  // render the scene
  renderer.render(scene, camera);



  document.querySelector('#rotatingElement').appendChild(renderer.domElement)
  // this is code from Three JS code along. my preference would be to replace this with a JQuery selector,
  // but I will leave as is for now.

  gui = new dat.GUI();
  gui.add(controller, "rotationSpeed", 0, 5);
  // gui.add(controller, "bouncingSpeed", 0, 0.05);




  animate();
};




const onResize = () => {
  // change aspect ratio of the camera
  camera.aspect = window.innerWidth / window.innerHeight
  // update positions of the shapes
  camera.updateProjectionMatrix();
  // update the size of the render
  // renderer.setSize(window.innerWidth, window.innerHeight)
  renderer.setSize(window.innerWidth, window.innerHeight)

};

window.addEventListener("resize", onResize);
