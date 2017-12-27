import React from 'react'
import PageCenter from '../Layout/PageCenter'
import LoginCard from './Card'
import {
  prefixDom
} from 'cfx.dom'

CFX = prefixDom {
  PageCenter
  LoginCard
}

class CenterCard extends React.Component

  render: ->

    {
      c_PageCenter
      c_LoginCard
    } = CFX

    c_PageCenter {}
    ,
      c_LoginCard {}

export default CenterCard
