import { prefixDom } from 'cfx.dom'
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
      if CardContent
      then [
        CardContent
      ]
      else []
      c_Divider {}
        # style:
        #   float: 'left'