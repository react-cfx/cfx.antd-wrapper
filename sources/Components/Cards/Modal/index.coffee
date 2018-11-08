import cfxify from 'cfx.react.dom'
import Show from './Modal'

CFX = cfxify {
	Show
}

export default ->

	render: ->

		{
			c_Show
		} = CFX

		c_Show
			visible: @props.visible
			handleOk: @props.handleOk
			handleCancel: @props.handleCancel
			ModalTitle: @props.ModalTitle
			ModalContent: @props.ModalContent