import React from 'react'
import { Form } from 'antd'
import cfxify from 'cfx.react.dom'
import UserName from './UserName'
import PassWord from './PassWord'
import Commit from './Commit'
import button from './button'
# import './index.css'
import nb from './style'

CFX = cfxify {
	'div'
	Form
	UserName
	PassWord
	Commit
	button
}

class LoginForm extends React.Component


	handleSubmit: (e) => 
		console.log 'this is run antd form '
		e.preventDefault()
		@props.form.validateFields (err, values) =>
			if @props.submit?
				@props.submit values
			else undefined

	handleClick: (e) =>
		e.preventDefault()
		console.log 'this is run wrapp click'
		@props.form.validateFields (err, values) =>
			if @props.click?
				@props.click values
			else undefined

	render: ->

		{
			c_div
			c_Form
			c_UserName
			c_PassWord
			c_Commit
			c_button
		} = CFX

		{ getFieldDecorator } = @props.form

		loginForm =

			c_Form {
				( nb 'loginForm' )...        
				onSubmit: @handleSubmit
			}
			,
				c_UserName
					decorator: getFieldDecorator
				c_PassWord
					decorator: getFieldDecorator

				c_button {
					decorator: getFieldDecorator
					onClick: @handleClick
				}
				
				c_Commit {}

				c_div {
					( nb 'loginFormForgot')...
				}
				, "版本: #{@props.version}"

		c_div
			id: 'components-form-demo-normal-login'
		,
			loginForm	


export default Form.create() LoginForm
