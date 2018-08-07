import React from 'react'
import { Form } from 'antd'
import cfxify from 'cfx.react.dom'
import UserName from './UserName'
import PassWord from './PassWord'
import Commit from './Commit'
# import './index.css'
import nb from './style'

CFX = cfxify {
	'div'
	Form
	UserName
	PassWord
	Commit
}

class LoginForm extends React.Component

	# handleSubmit: (e) => 
	# 	e.preventDefault()
	# 	@props.form.validateFields (err, values) =>
	# 		# console.log 'Received values of form: ', values unless err
			
	# 		if @props.submit?
	# 		then @props.submit values
	# 		else undefined
	Change: (value) =>
		if @props.Change?
		then @props.Change value
		else {}
	render: ->

		{
			c_div
			c_Form
			c_UserName
			c_PassWord
			c_Commit
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
					Change: (value) => @Change value
					# @props.onChange value
				c_PassWord
					decorator: getFieldDecorator
					Change: (value) => @Change value
					# @props.onChange value
				c_Commit {
					decorator: getFieldDecorator
					(
						if @props.Link
						then Link: @props.Link
						else {}
					)...
				}
				c_div {
					( nb 'loginFormForgot')...
				}
				, "版本: #{@props.version}"

		c_div
			id: 'components-form-demo-normal-login'
		,
			loginForm	

export default Form.create() LoginForm
