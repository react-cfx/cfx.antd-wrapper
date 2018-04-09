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
  
  render: ->

    c_PageCenter props
    ,
      c_LoginCard {
        (
          if @props.submit
          then submit: @props.submit
          else {}         
        )...
        (
          if @props.Link
          then Link: @props.Link
          else {}           
        )...
      }

export default CenterCard
