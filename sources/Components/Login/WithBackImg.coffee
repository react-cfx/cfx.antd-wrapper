import cfxify from 'cfx.react.dom'
import CenterCard from './CenterCard'
import BackgroundImg from './background.jpg'

CFX = cfxify {
  CenterCard
}

export default =>

  { 
    c_CenterCard
  } = CFX

  render: ->

    c_CenterCard
      style:
        backgroundImage: "url(#{
          if BackgroundImg.src?
          then BackgroundImg.src
          else BackgroundImg
        })"
      Link: @props.Link
      registerKind: @props.registerKind
