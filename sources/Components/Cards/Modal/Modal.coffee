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
			visible: 
				unless @props.visible 
				then @props.visible
				else false
		@

	handleOk: (e) =>
		@props.handleOk()
		@setState
			visible: false
			
	handleCancel: (e) =>
		@props.handleCancel()
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
				visible: (
					if @state.visible
					then @state.visible
					else @props.visible
				)
				onOk: @handleOk
				onCancel: @handleCancel
			,
				@props.ModalContent

export default ShowpModal