import FormField from '../../Form/Field'
import {
  Input
  Icon
} from 'antd'
import cfxify from 'cfx.react.dom'

CFX = cfxify {
  Input
  Icon
  FormField
}

UserName = ({
  decorator
}) =>
  {
    c_Icon
    c_Input
    c_FormField
  } = CFX

  c_FormField {}
  ,
    decorator: decorator
    name: 'username'
    props:
      rules: [
        required: true
        message: '请输入邮箱 / 手机号 / 用户名。'          
      ]
    children:
      c_Input
        prefix: c_Icon
          type: 'user'
          style: fontSize: 13
        placeholder: 'Email / Phone / UserName'

export default UserName
