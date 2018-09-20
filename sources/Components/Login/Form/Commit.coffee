import FormField from '../../Form/Field'
import {
  Button
  Checkbox
} from 'antd'
import cfxify from 'cfx.react.dom'
import nb from './style'
import LinkBtn from './LinkBtn'
import Link from '../../../stories/Links'
import domWithLink from 'cfx.react.link.dom'

Commit = ({
  decorator
}) =>
  render: ->

    CFX = cfxify {
      'a'
      'div'
      'span'
      Button
      Checkbox
      FormField
      LinkBtn
      domWithLink
    }

    {
      c_a
      c_div
      c_span
      c_Button
      c_Checkbox
      c_FormField
      c_LinkBtn
      c_domWithLink
    } = CFX

    c_FormField {}
    ,

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

        c_domWithLink
          kind: @props.registerKind
          Link: @props.Link
          onClick: => 
            console.log ''
          domObj: =>
            c_span
              key: 'span'
            , '注册'

export default Commit