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
	validator = (rule, value, cb) =>
		console.log 'validator --->>>>', value
		# if value is '123'
		# 	cb '哈哈哈哈哈哈'
		# cb()
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
					validator: @validator
				c_button {
					decorator: getFieldDecorator
					onClick: @handleClick
					name: 'onSubmit'
					props:
						rules: [
							message: '账号密码错误!'
							# validator: @validator
						]
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
