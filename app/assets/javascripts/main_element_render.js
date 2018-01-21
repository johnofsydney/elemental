console.log("THREE in sandbox");
console.log(THREE);

let scube = null;
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
  // );
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

// when we dadd new before the creation of a funxtion it does two things WRT "this":
// It sets "this" to a new empty function
// It automatically returns the keyword "this" (ie that empty object)
const controller = new function () {
  this.rotationSpeed = 0.02;
  this.bouncingSpeed = 0.02;
}

const animate = () => {

  // console.log(electrons.length);
  step += controller.bouncingSpeed;
  scube.rotation.x += controller.rotationSpeed
  scube.rotation.y += controller.rotationSpeed
  scube.rotation.z += controller.rotationSpeed


  for (var i = 0; i < electrons.length; i++) {
    a = 5 * ( 1 + i ) // amplitude increases per shell

    for (var j = 0; j < electrons[i].length; j++) {
      offset = (j / electrons[i].length) * 2 * Math.PI // spaces electrons evenly throughout circle
      electrons[i][j].position.x = (a * (Math.sin(step * a/5 + offset )))
      electrons[i][j].position.y = (-a * (Math.cos(step * a/5 + offset )))
      electrons[i][j].position.z = (a * (Math.sin(step * a/5 + offset )))
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
  const scubeMaterial = new THREE.MeshLambertMaterial({
    color: 0xff0606
    // wireframe: true
  });
  const scubeGeometry = new THREE.BoxGeometry(4,4,4);

  scube = new THREE.Mesh(scubeGeometry, scubeMaterial);
  scube.position.x = 0
  scube.position.y = 0
  scube.position.z = 0

  scube.castShadow = true;
  scene.add(scube)
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
  plane.position.y = -20;
  plane.position.z = 0;


  plane.receiveShadow = true;
  scene.add(plane)

}

const init = (e) => {
  renderer.setClearColor( 0xeceff1);
  renderer.setSize(500, 500)
  renderer.setSize(window.innerWidth / 2, window.innerHeight / 2)
  // should be
  //renderer.setSize(window.innerWidth, window.innerHeight)
  // having fixed numbers here breasks the aspec ratio

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
  gui.add(controller, "rotationSpeed", 0, 0.05);
  gui.add(controller, "bouncingSpeed", 0, 0.05);




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
