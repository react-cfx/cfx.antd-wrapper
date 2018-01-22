import { prefixDom } from 'cfx.dom'
import CenterCard from './CenterCard'
import { Layout } from 'antd'
import FullPageLayers from '../Layout/FullPageLayers'

import Particles from 'react-particles-js'
import particlesConfig from './particlesConfig'
import BackgroundImg from './background.jpg'

CFX = prefixDom {
  'img'
  Layout
  Particles
  CenterCard
  FullPageLayers
}

export default =>

  {
    c_Layout
    c_CenterCard
    c_Particles
    c_img
    c_FullPageLayers
  } = CFX

  Layers =
    background:
      layout:
        style:
          backgroundImage: "url(#{
            if BackgroundImg.src?
            then BackgroundImg.src
            else BackgroundImg
          })"
      child:
        c_Particles
          style:
            position: 'absolute'
            width: '100%'
            minHeight: '100vh'
          params: particlesConfig

        # c_img
        #   src:
        #     if BackgroundImg.src?
        #     then BackgroundImg.src
        #     else BackgroundImg
        #   style:
        #     width: '100%'
        #     minHeight: '100vh'
        
    centerCard:
      withLayout: false
      child: c_CenterCard {}

  c_FullPageLayers
    layers: [
      Layers.background
      Layers.centerCard
    ]
