import prefixDom from 'cfx.react.dom'
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

    c_Row.apply @, [
      key: 'Row'
      style:
        marginLeft: '-16px'
        marginRight: '-16px'
    ,
      (
        @props.data.reduce (r, c) =>
          [
            r...
            c_Col
              xs: 24
              sm: 12
              md: 8
              style:
                paddingLeft: '16px'
                paddingRight: '16px'
            ,
              c_div
                style:
                  lineHeight: '22px'
                  paddingBottom: '16px'
                  marginRight: '8px'
                  color: 'rgba(0, 0, 0, .85)'
                  whiteSpace: 'nowrap'
                  display: 'table-cell'
              , c.keys
              c_div
                key: 'div2'
                style:
                  lineHeight: '22px'
                  width: '100%'
                  paddingBottom: '16px'
                  color: 'rgba(0,0,0,.65)'
                  display: 'table-cell'
              , c.values
          ]
        , []
      )...
    ]