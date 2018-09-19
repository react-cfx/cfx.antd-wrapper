import React, { Component } from 'react'
import cfxify from 'cfx.react.dom'
import { Button } from 'antd'

CFX = cfxify {
  Button
}

{
  c_Button
} = CFX

export default ({
  onClick
}) =>

  c_Button
    type: 'primary'
    style:
      maxWidth: '300px'
      zIndex: '999'
      float: 'right'
      width: '100%'
    onClick: onClick
  , '登录'