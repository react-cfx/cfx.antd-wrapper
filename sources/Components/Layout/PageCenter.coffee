# import { ddbs as dd } from 'ddeyes'

import { prefixDom } from 'cfx.dom'
import { Layout } from 'antd'
import {
  mapProps
  # withProps
  compose
} from 'recompose'

CFX = prefixDom {
  Layout
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
      display: 'flex'
      height: '100vh'
      alignItems: 'center'
      justifyContent: 'center'
    }
  }

# hocWithProps = withProps
#   createProps: (ownerProps) =>
#     {
#       ownerProps...
#       style: 
#         display: 'flex'
#         height: '100vh'
#         alignItems: 'center'
#         justifyContent: 'center'
#     }

enhance = compose(
  hocMapProps
  # hocWithProps
)

PageCenter = enhance (
  props
  # {
  #   createProps
  #   ownerProps...
  # }
  # state
) =>
  { c_Layout } = CFX
  c_Layout props

export default PageCenter
