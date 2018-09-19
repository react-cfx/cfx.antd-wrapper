import cfxify from 'cfx.react.dom'
import Header from './Header'

CFX = cfxify {
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

