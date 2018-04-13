import cfxify from 'cfx.dom'
import MainContent from '../../Components/Layout/MainContent'

CFX = cfxify {
  MainContent
}

export default ->

  {
    c_MainContent
  } = CFX

  c_MainContent
    header: 'Hello'

