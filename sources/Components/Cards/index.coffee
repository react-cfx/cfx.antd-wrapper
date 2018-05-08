import prefixDom from 'cfx.react.dom'
import { linkTo } from '@storybook/addon-links'
import {
  Row
  Col
  Card
  Divider
  Form
  Input
  Button
} from 'antd'

FormItem = Form.Item

CFX = prefixDom {
  'div' 
  Row
  Col
  Card
  Form
  Input
  FormItem
  Divider
  Button
}

export default ({
  props...
}) =>

  render: ->
    {
      CardContent
      HeaderDivider
      FooterDivider
    } = props

    {
      c_div
      c_Row
      c_Col
      c_Divider
      c_Form
      c_FormItem
      c_Input
      c_Button
    } = CFX

    c_div {}
    ,
      c_div
        style:
          minHeight: '50px'
      ,    
        c_div
          style:
            fontSize: '16px'
            float: 'left'
            color: 'rgba(0, 0, 0, .85)'
            fontWeight: '500'
        , @props.title
      if HeaderDivider
      then [
        c_Divider
          key: '2'
      ]
      else []
      if CardContent
      then [
        CardContent
      ]
      else []
      
      if FooterDivider
      then [
        c_Divider
          key: '1'
      ]
      else []