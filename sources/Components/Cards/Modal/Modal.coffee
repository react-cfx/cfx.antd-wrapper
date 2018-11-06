import React, { Component } from 'react'
import cfxify from 'cfx.react.dom'
import {
	Modal
} from 'antd'

CFX = cfxify {
	'div'
	'p'
	'a'
	Modal
	
}

class ShowpModal extends Component

	constructor: (props) ->
		super props
		@state =
			visible: @props.visible
		@

	handleOk: (e) =>
		@props.handleOk()
		@setState
			visible: false
			
	handleCancel: (e) =>
		@setState
			visible: false

	render: ->

		{
			c_div
			c_Modal
		} = CFX

		c_div {}
		,
			c_Modal
				title: @props.ModalTitle
				okText: '确定'
				cancelText: '取消'
				visible: @state.visible
				onOk: @handleOk
				onCancel: @handleCancel
			,
				@props.ModalContent

export default ShowpModal