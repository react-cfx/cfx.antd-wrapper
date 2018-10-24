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
# validator = (rule, value, cb) =>
#   console.log 'validator --->>>>', value
#   if value is '123'
#     cb '哈哈哈哈哈哈'
#   cb() 
PassWord = ({
  decorator
  validator
}) =>
  
  {
    c_Icon
    c_Input
    c_FormField
  } = CFX

  c_FormField {}
  ,
    decorator: decorator
    name: 'password'
    props:
      rules: [
        message: '请输入正确的密码!'
        validator: validator
        required: true
      ]
    children:
      c_Input
        prefix: c_Icon
          type: 'lock'
          style: fontSize: 13
        type: 'password'
        placeholder: 'password'

export default PassWord
