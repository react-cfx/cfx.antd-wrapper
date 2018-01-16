# import { ddbs as dd } from 'ddeyes'
import PageCenter from '../Layout/PageCenter'
import LoginCard from './Card'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  PageCenter
  LoginCard
}

CenterCard = =>

  {
    c_PageCenter
    c_LoginCard
  } = CFX

  c_PageCenter {}
  ,
    c_LoginCard {}

export default CenterCard
