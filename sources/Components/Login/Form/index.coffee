import React from 'react'
import { Form } from 'antd'
import { prefixDom } from 'cfx.dom'
import UserName from './UserName'
import PassWord from './PassWord'
import Commit from './Commit'
# import './index.css'
import nb from './style'

CFX = prefixDom {
  'div'
  Form
  UserName
  PassWord
  Commit
}

class LoginForm extends React.Component

  handleSubmit: (e) =>
    e.preventDefault()
    @props.form.validateFields (err, values) =>
      console.log 'Received values of form: ', values unless err

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
        onSubmit: @handleSubmit
        # className: 'login-form'
        ( nb 'loginForm' )...
      }
      ,

        c_UserName
          decorator: getFieldDecorator

        c_PassWord
          decorator: getFieldDecorator

        c_Commit
          decorator: getFieldDecorator

    c_div
      id: 'components-form-demo-normal-login'
    ,
      loginForm

export default Form.create() LoginForm
