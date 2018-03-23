import { Card } from 'antd'
import Form from './Form'
import { prefixDom } from 'cfx.dom'

import {
  mapProps
  compose
} from 'recompose'

CFX = prefixDom {
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
          if @props.onSubmit
          then onSubmit: @props.onSubmit
          else {}
        )...
      }

export default LoginCard
