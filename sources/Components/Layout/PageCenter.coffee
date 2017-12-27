# import { ddbs as dd } from 'ddeyes'

import React from 'react'

import { prefixDom } from 'cfx.dom'
import {
  mapProps
  # withProps
  compose
} from 'recompose'

CFX = prefixDom {
  'div'
}

hocMapProps = mapProps (ownerProps) =>
  ownerProps
  {
    ownerProps...
    style: {
      (
        if ownerProps.style?
        then ownerProps.style
        {}
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
  { c_div } = CFX
  c_div props

export default PageCenter
