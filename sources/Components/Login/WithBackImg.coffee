import { prefixDom } from 'cfx.dom'
import CenterCard from './CenterCard'
import BackgroundImg from '../../../public/assets/demo-1-bg.jpg'

CFX = prefixDom {
  CenterCard
}

export default =>

  { c_CenterCard } = CFX

  c_CenterCard
    style:
      backgroundImage: "url(#{BackgroundImg})"
