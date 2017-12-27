import React from 'react'
import { Card } from 'antd'
import Form from './Form'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Card
  Form
}

class LoginCard extends React.Component

  render: ->

    {
      c_Card
      c_Form
    } = CFX

    c_Card
      style: {
        @props.style...
        width: 300
      }
    ,
      c_Form {}

export default LoginCard
