# import { ddbs as dd } from 'ddeyes'
import PageCenter from '../Layout/PageCenter'
import LoginCard from './Card'

import cfxify from 'cfx.dom'

CFX = cfxify {
  PageCenter
  LoginCard
}

CenterCard = (props) =>

  {
    c_PageCenter
    c_LoginCard
  } = CFX

  c_PageCenter props
  ,
    c_LoginCard {}

export default CenterCard
