# import { ddbs as dd } from 'ddeyes'
import PageCenter from '../Layout/PageCenter'
import LoginCard from './Card'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
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
          if @props.onSubmit
          then onSubmit: @props.onSubmit
          else {}
        )...
      }

export default CenterCard
