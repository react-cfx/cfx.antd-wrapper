import prefixDom from 'cfx.react.dom'
import Header from './Header'

CFX = prefixDom {
  Header
}

export default ->

  render: ->
    console.log 'index:', @
    {
      c_Header
    } = CFX

    c_Header
      onClick: @props.onClick

