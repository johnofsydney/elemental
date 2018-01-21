console.log("THREE in sandbox");
console.log(THREE);

let cube = null;
let sphere = null;
let pointLight = null;

let step = 0;
let controls = null;
let gui = null;
let electrons = []
// let sphere1 = null;
// let sphere2 = null;
// let sphere3 = null;
// let light1 = null;
// let light2 = null;
// let light3 = null;

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
  cube.rotation.x += controller.rotationSpeed
  cube.rotation.y += controller.rotationSpeed
  cube.rotation.z += controller.rotationSpeed




  for (var i = 0; i < electrons.length; i++) {
    offset = (i / electrons.length) * 2 * Math.PI
    a = 20 * ((  (2 / electrons.length) * i) - 1)
    b = 20 * Math.cos((i / electrons.length) * 2 * Math.PI)
    electrons[i].position.x = (20 * (Math.sin(step + offset )))
    electrons[i].position.y = (20 * (Math.cos(step + offset )))
    // electrons[i].position.z = (a * (Math.cos(step + offset )))

    // electrons[i].position.z = (a * (Math.sin(step + offset )))

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
  const cubeGeometry = new THREE.BoxGeometry(4,4,4);

  cube = new THREE.Mesh(cubeGeometry, cubeMaterial);
  cube.position.x = 0
  cube.position.y = 0
  cube.position.z = 0

  cube.castShadow = true;
  scene.add(cube)
}

const addSphere = (n) => {
  console.log(`in addSpehere, adding ${n} spheres`);

  const sphereGeometry = new THREE.SphereGeometry(1, 20, 20);
  const sphereMaterial = new THREE.MeshLambertMaterial({
    color: 0x00a3ff
  })


  for (var j = 1; j <= n; j++) {
    sphere = new THREE.Mesh(sphereGeometry, sphereMaterial)
    sphere.position.x = 0
    sphere.position.y = 0
    sphere.position.z = 0

    sphere.castShadow = true;
    sphere.receiveShadow = true;



    electrons.push(sphere)
  }

  for (var i = 0; i < electrons.length; i++) {
    scene.add(electrons[i])
  }
  // scene.add(sphere)
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
  plane.position.x = 0;
  plane.position.y = -20;
  plane.position.z = 0;


  plane.receiveShadow = true;
  scene.add(plane)

}

const init = (n) => {
  renderer.setClearColor( 0xeceff1);
  renderer.setSize(500, 500)
  renderer.setSize(window.innerWidth / 2, window.innerHeight / 2)
  // should be
  //renderer.setSize(window.innerWidth, window.innerHeight)
  // having fixed numbers here breasks the aspec ratio

  addAxes();
  addPlane();
  addCube();
  addSphere(n);
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
