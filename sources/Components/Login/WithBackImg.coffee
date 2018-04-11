import cfxify from 'cfx.dom'
import CenterCard from './CenterCard'
import BackgroundImg from '../../../public/assets/background.jpg'

CFX = cfxify {
  CenterCard
}

export default =>

  { c_CenterCard } = CFX

  c_CenterCard
    style:
      backgroundImage: "url(#{
        if BackgroundImg.src?
        then BackgroundImg.src
        else BackgroundImg
      })"
