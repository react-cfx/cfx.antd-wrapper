import FormField from '../../Form/Field'
import {
  Button
  Checkbox
} from 'antd'
import cfxify from 'cfx.dom'
import nb from './style'
import LinkBtn from './LinkBtn'
import Link from '../../../stories/Links'
import getLinks from '../../../stories/LoginGetLinks'

Commit = ({
  decorator
}) =>
  render: ->

    CFX = cfxify {
      'a'
      'div'
      Button
      Checkbox
      FormField
      LinkBtn
      getLinks
    }

    {
      c_a
      c_div
      c_Button
      c_Checkbox
      c_FormField
      c_LinkBtn
    } = CFX

    c_FormField {}
    ,
      c_LinkBtn
        Link: @props.Link
      # c_Button {
      #   type: 'primary'
      #   htmlType: 'submit'
      #   ( nb 'loginFormButton' )...
      # }
      # , '登录'

      # decorator: decorator
      # name: 'remember'
      # # props:
      # #   valuePropName: 'checked'
      # #   initialValue: true
      # children:
      #   c_Checkbox {}
      #   , '记住用户名'

      c_div {
        ( nb 'loginFormForgot' )...
      }
      ,
        c_a
          href: ''
          style: color: 'rgb(204, 204, 204)'        
        , '忘记密码'

        ' or '

        c_a
          href: ''
        , '注册'

export default Commit