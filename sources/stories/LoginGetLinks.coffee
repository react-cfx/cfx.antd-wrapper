import React, { Component } from 'react'
import prefixDom from 'cfx.react.dom'
import getLinks from 'cfx.react.link'

CFX = prefixDom {}

export default (Link) => ({
  location
  children
}) =>
  CFX = CFX._.extends (
    getLinks Link()
    ,
      onSubmitLinks: '/onSubmitLinks'
  )

  render: ->
    
    {
      c_onSubmitLinks
    } = CFX
    
    c_onSubmitLinks {}
    , children
    