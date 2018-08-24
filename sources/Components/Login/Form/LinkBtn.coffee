import React, { Component } from 'react'
import cfxify from 'cfx.react.dom'
import { domWithLink, getLinks } from 'cfx.react.link.dom'
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
}) =>
  c_domWithLink
    Link: getLinks
      kind: kind
      Link: Link
    domObj: =>
      c_Button
        type: 'primary'
        style:
          maxWidth: '300px'
          float: 'right'
          width: '100%'
        htmlType: 'submit'
      , '登录'