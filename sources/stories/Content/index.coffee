import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
import Content from '../../Components/Content'

CFX = cfxify {
	'div'
	Content
}

export default =>

	storiesOf 'Content', module

	.add 'Content'

	, =>

		{
			c_div
			c_Content
		} = CFX

		[
			c_Content
				key: 'Content'
				many: true
				Content: [
					c_div
						key: 'div'
					, 'HelloWorld!'
					c_div
						key: 'div1'
					, 'HelloWorld!'
					c_div
						key: 'div2'
					, 'HelloWorld!'
				]
			c_Content
				key: 'Content'
				Content: [
					c_div
						key: 'div'
					, 'HelloWorld!'
					c_div
						key: 'div1'
					, 'HelloWorld!'
					c_div
						key: 'div2'
					, 'HelloWorld!'
				]
		]
