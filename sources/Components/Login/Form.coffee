import React from 'react'
import { Form, Icon, Input, Button, Checkbox } from 'antd'
import FormField from '../Form/Field'
import { prefixDom } from 'cfx.dom'

import './Form.css'

CFX = prefixDom {
  'a'
  'div'
  Form
  FormField
  Icon
  Input
  Button
  Checkbox
}

class LoginForm extends React.Component

  handleSubmit: (e) =>
    e.preventDefault()
    @props.form.validateFields (err, values) =>
      console.log 'Received values of form: ', values unless err

  render: ->
    {
      c_div
      c_a
      c_Form
      c_FormField
      c_Icon
      c_Input
      c_Button
      c_Checkbox
    } = CFX

    { getFieldDecorator } = @props.form

    loginForm =

      c_Form
        onSubmit: @handleSubmit
        className: 'login-form'
      ,

        c_FormField {}
        ,
          decorator: getFieldDecorator
          name: 'username'
          props:
            rules: [
              required: true
              message: 'Please input your username!'
            ]
          children:
            c_Input
              prefix: c_Icon
                type: 'user'
                style: fontSize: 13
              placeholder: 'Username'

        c_FormField {}
        ,
          decorator: getFieldDecorator
          name: 'password'
          props:
            rules: [
              required: true
              message: 'Please input your Password!'
            ]
          children:
            c_Input
              prefix: c_Icon
                type: 'lock'
                style: fontSize: 13
              type: 'password'
              placeholder: 'Password'

        c_FormField {}
        ,

          decorator: getFieldDecorator
          name: 'remember'
          props:
            valuePropName: 'checked'
            initialValue: true
          children:
            c_Checkbox {}
            , 'Remember me'

          c_a
            className: 'login-form-forgot'
            href: ''
          , 'Forgot password'

          c_Button
            type: 'primary'
            htmlType: 'submit'
            className: 'login-form-button'
          , 'log in'

          'Or '

          c_a
            href: ''
          , 'register now!'

    c_div
      id: 'components-form-demo-normal-login'
    ,
      loginForm

export default Form.create() LoginForm
