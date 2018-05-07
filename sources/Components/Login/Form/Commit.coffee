import FormField from '../../Form/Field'
import {
  Button
  Checkbox
} from 'antd'
import prefixDom from 'cfx.react.dom'
import nb from './style'

CFX = prefixDom {
  'a'
  'div'
  Button
  Checkbox
  FormField
}

Commit = ({
  decorator
}) =>

  {
    c_a
    c_div
    c_Button
    c_Checkbox
    c_FormField
  } = CFX

  c_FormField {}
  ,
    c_Button {
      type: 'primary'
      htmlType: 'submit'
      ( nb 'loginFormButton' )...
    }
    , '登录'

    decorator: decorator
    name: 'remember'
    props:
      valuePropName: 'checked'
      initialValue: true
    children:
      c_Checkbox {}
      , '记住用户名'

    c_div {
      ( nb 'loginFormForgot' )...
    }
    ,
      c_a
        href: ''
      , '忘记密码'

      ' or '

      c_a
        href: ''
      , '注册'

export default Commit
