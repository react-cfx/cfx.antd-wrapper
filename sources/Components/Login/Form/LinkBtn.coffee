import React, { Component } from 'react'
import cfxify from 'cfx.dom'
# import getLinks from 'cfx.link'
import { Button } from 'antd'

CFX = cfxify {
  Button
}

{
  c_Button
} = CFX

Btn = =>
  c_Button
    type: 'primary'
    htmlType: 'submit'
    style:
      maxWidth: '300px'
      float: 'right'
      width: '100%'
  , '登录'

export default ({
  location
  Link
}) =>
  # console.log link, location
  CFX = cfxify {
    Btn
  }
  {
    c_Btn
  } = CFX
  
  if Link?
    console.log '1'
    CFX = CFX._.extends {
      Link
    }
    {
      c_Link
    } = CFX
    c_Link {}
    ,
      c_Btn {}
  else
    console.log '2'
    c_Btn {}
