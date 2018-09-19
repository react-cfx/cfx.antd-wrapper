import React, { Component } from 'react'
import cfxify from 'cfx.react.dom'
import domWithLink from 'cfx.react.link.dom'
import { Button } from 'antd'

CFX = cfxify {
  Button
  domWithLink
}

{
  c_Button
  c_domWithLink
} = CFX

export default ({
  kind
  Link
  name
  pageClick
}) =>
  c_domWithLink
    kind: kind
    Link: Link
    if pageClick
    then onClick: => pageClick()
    else {}
    domObj: =>
      c_Button
        type: 'primary'
        style:
          maxWidth: '300px'
          float: 'right'
          width: '100%'
        htmlType: 'submit'
      , name