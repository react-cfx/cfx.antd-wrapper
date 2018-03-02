import { prefixDom } from 'cfx.dom'
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

export default =>

  render: ->

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
          fontSize: '16px'
          float: 'left'
          color: 'rgba(0, 0, 0, .85)'
          fontWeight: '500'
          marginBottom: '16px'
      , @props.title
      
      c_Button
        type: 'primary'
        shape: 'circle'
        icon: 'search'
        style:
          float: 'right'
          marginBottom: '16px'
      , @props.search

      if @props.data?
      then [
        c_Row.apply @, [
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
      ]
      else []
      if @props.form?
      then [
        c_Form
          style:
            margin: '40px auto 0'
            maxWidth: '500px'
        ,
          (
            @props.form.reduce (r,c) =>
              [
                r...
                c_FormItem
                  labelCol: 
                    span: 5
                  wrapperCol:
                    span: 19
                  label: c
                ,
                  c_Input
                    type: 'text'
                    placeholder: "请输入#{c}"
              ]
            , []
          )...
        ]
      else []
      
      if @props.btn is true
      then [
        c_Row {}
        ,
          c_Col
            xs: 24
            sm: 19
            offset: 5
          ,
            c_Button
              style:
                float: 'right'
              key: 'primary'
              type: 'primary'
            , '完成'
      ]
      else []
      c_Divider {}