import { prefixDom } from 'cfx.dom'
import MainContent from '../../Components/Layout/MainContent'

CFX = prefixDom {
  MainContent
}

export default ->

  {
    c_MainContent
  } = CFX

  c_MainContent
    header: 'Hello'

