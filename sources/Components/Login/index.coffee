import CenterCard from './CenterCard'
import { prefixDom } from 'cfx.dom'
import React,{ Component } from 'react'
import Particles from 'react-particles-js'
import img from '../../../public/assets/demo-1-bg.jpg'
CFX = prefixDom {
  Particles
  CenterCard
  'div'
  'img'
}

export default =>

  {
    c_Particles
    c_div
    c_img
    c_CenterCard
  } = CFX

  [
    c_div
      style:
        position: 'absolute'
        
    ,
      c_Particles 
        style:
          position: 'absolute'
        width: window.innerWidth
        height: window.innerHeight
        params:
          particles:   
            number:   
              value: 150 
              density:   
                enable: true  
                value_area: 800
            color:   
              value: '#9cd9f9'
            shape:   
              type: 'circle'    
              stroke:   
                width: 0  
                color: '#9cd9f9'  
              polygon:   
                nb_sides: 5   
            opacity:   
              value: 0.5  
              random: false  
              anim:   
                enable: false  
                speed: 1  
                opacity_min: 0.1  
                sync: false   
            size:   
              value: 3  
              random: true  
              anim:   
                enable: false  
                speed: 40  
                size_min: 0.1  
                sync: false 
            line_linked:   
              enable: true  
              distance: 150  
              color: '#9cd9f9'   
              opacity: 0.4  
              width: 1 
            move:   
              enable: true  
              speed: 6  
              direction: 'none'    
              random: false  
              straight: false  
              out_mode: 'out'    
              bounce: false  
              attract:   
                enable: false  
                rotateX: 600  
                rotateY: 1200    
          interactivity:   
            detect_on: 'canvas'    
            events:   
              onhover:   
                enable: true  
                mode: 'grab'          
              onclick:   
                enable: true  
                mode: 'push'      
              resize  : true     
            modes:   
              grab:   
                distance: 140  
                line_linked:   
                  opacity: 1         
              bubble:   
                distance: 400  
                size: 40  
                duration: 2  
                opacity: 8  
                speed: 3
              repulse:   
                distance: 200  
                duration: 0.4
              push:   
                particles_nb: 4
              remove:   
                particles_nb: 2
          retina_detect  : true

      c_img
        src: img
        style:
          zIndex: -1

    c_CenterCard {}
  ]
    

