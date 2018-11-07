import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import Modal from '../../Components/Cards/Modal'

CFX = cfxify {
	'div'
	Modal
}

export default =>

	storiesOf 'Modal', module

	.add 'Modal'

	, =>

		{
			c_div
			c_Modal
		} = CFX

		c_Modal
			visible: true
			ModalTitle: '这是标题'
			ModalContent:
				c_div {}
				, 'HelloWorld!!!'    


