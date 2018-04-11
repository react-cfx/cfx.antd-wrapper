import cfxify from 'cfx.dom'
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
      BtnTitle: @props.BtnTitle
      ModalTitle: @props.ModalTitle
      ModalContent: @props.ModalContent

        