import React, { Component } from 'react'
import prefixDom from 'cfx.react.dom'
import { Button } from 'antd'

CFX = prefixDom {
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
  CFX = prefixDom {
    Btn
  }
  {
    c_Btn
  } = CFX
  
  if Link?
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
    c_Btn {}
