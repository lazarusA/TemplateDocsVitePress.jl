<!-- InteractiveSphere.vue -->
<template>
    <div ref="container" style="width: 300px; height: 300px;"></div>
  </template>
  
  <script setup>
  import { ref, onMounted, onUnmounted } from 'vue'
  import * as THREE from 'three'
  
  const container = ref(null)
  let scene, camera, renderer, sphere
  
  onMounted(() => {
    // Set up the scene
    scene = new THREE.Scene()
    camera = new THREE.PerspectiveCamera(75, 1, 0.1, 1000)
    renderer = new THREE.WebGLRenderer({ antialias: true })
    renderer.setSize(300, 300)
    renderer.setClearColor(0xf0f0f0)  // Set background color
    container.value.appendChild(renderer.domElement)
  
    // Create a sphere
    const geometry = new THREE.SphereGeometry(1, 32, 32)
    const material = new THREE.MeshPhongMaterial({ 
      color: 0x00ff00,
      shininess: 100
    })
    sphere = new THREE.Mesh(geometry, material)
    scene.add(sphere)
  
    // Add lighting
    const ambientLight = new THREE.AmbientLight(0x404040)
    scene.add(ambientLight)
  
    const directionalLight = new THREE.DirectionalLight(0xffffff, 0.5)
    directionalLight.position.set(1, 1, 1)
    scene.add(directionalLight)
  
    camera.position.z = 3
  
    // Animation function
    function animate() {
      requestAnimationFrame(animate)
      renderer.render(scene, camera)
    }
    animate()
  
    // Add interactivity
    let isDragging = false
    let previousMousePosition = { x: 0, y: 0 }
  
    container.value.addEventListener('mousedown', () => { isDragging = true })
    container.value.addEventListener('mouseup', () => { isDragging = false })
    container.value.addEventListener('mousemove', (e) => {
      if (isDragging) {
        const deltaMove = {
          x: e.offsetX - previousMousePosition.x,
          y: e.offsetY - previousMousePosition.y
        }
  
        sphere.rotation.y += deltaMove.x * 0.01
        sphere.rotation.x += deltaMove.y * 0.01
  
        previousMousePosition = {
          x: e.offsetX,
          y: e.offsetY
        }
      }
    })
  })
  
  onUnmounted(() => {
    // Clean up Three.js resources
    if (renderer) {
      renderer.dispose()
    }
    if (sphere) {
      sphere.geometry.dispose()
      sphere.material.dispose()
    }
  })
  </script>