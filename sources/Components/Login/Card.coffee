import { Card } from 'antd'
import Form from './Form'
import cfxify from 'cfx.dom'

import {
  mapProps
  compose
} from 'recompose'

CFX = cfxify {
  Card
  Form
}

hocMapProps = mapProps (ownerProps) =>
  {
    ownerProps...
    style: {
      (
        if ownerProps.style?
        then ownerProps.style
        else {}
      )...
      width: 300
    }
  }

enhance = compose hocMapProps

LoginCard = enhance (props) =>

  {
    c_Card
    c_Form
  } = CFX

  render: ->

    c_Card props
    ,
      c_Form {
        (
          if @props.submit
          then submit: @props.submit
          else {}
        )...
      }

export default LoginCard
