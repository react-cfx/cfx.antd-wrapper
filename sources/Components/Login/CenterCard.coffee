# import { ddbs as dd } from 'ddeyes'
import PageCenter from '../Layout/PageCenter'
import LoginCard from './Card'

import cfxify from 'cfx.react.dom'

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
        # (
        #   if @props.submit
        #   then submit: @props.submit
        #   else {}         
        # )...
        Link: @props.Link
        # loginKind: @props.loginKind
        registerKind: @props.registerKind
        (
          if @props.version
          then version: @props.version
          else {}           
        )...  
        (
          if @props.click
          then click: @props.click
          else {}
        )...
      }

export default CenterCard
