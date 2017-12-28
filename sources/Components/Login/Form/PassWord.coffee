import FormField from '../../Form/Field'
import {
  Input
  Icon
} from 'antd'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Input
  Icon
  FormField
}

PassWord = ({
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
    name: 'password'
    props:
      rules: [
        required: true
        message: '请输入正确的密码!'
      ]
    children:
      c_Input
        prefix: c_Icon
          type: 'lock'
          style: fontSize: 13
        type: 'password'
        placeholder: 'password'

export default PassWord
