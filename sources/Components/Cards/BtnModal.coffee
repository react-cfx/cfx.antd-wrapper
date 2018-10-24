import cfxify from 'cfx.react.dom'
import Pop from './Modal'

CFX = cfxify {
  Pop
}

export default ->

  render: ->

    {
      c_Pop
    } = CFX

    c_Pop
      shape: @props.shape
      icon: @props.icon
      type: @props.type
      style: @props.style
      handleOk: @props.handleOk
      BtnTitle: @props.BtnTitle
      ModalTitle: @props.ModalTitle
      ModalContent: @props.ModalContent

        