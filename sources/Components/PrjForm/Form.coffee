import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
# import dd from 'ddeyes'
import {
  Form
  Input
  Row
  Col
  AutoComplete
} from 'antd'

FormItem = Form.Item

CFX = prefixDom {
  'div'
  Form
  FormItem
  Input
  Row
  Col
  AutoComplete
}

class PrjForm extends Component
  constructor: (props) ->
      super props
      @state =
        dataSource: []
      @
 
  onSelect: (value) =>
    console.log 'onSelect',value
  handleSearch: (value) =>
    @setState {
      dataSource:
        if value
        then [
          value
          value+value
          value+value+value
        ]
        else []
    }

  render: ->

    {
      c_div
      c_Form
      c_FormItem
      c_Input
      c_Row
      c_Col
      c_AutoComplete
    } = CFX

    c_Form.apply @, [
      style:
        margin: '40px auto 0'
        maxWidth: '500px'
      (
        @props.title.reduce (r, c) =>
          [
            r...
            c_FormItem
              labelCol:
                span: 5
              wrapperCol:
                span: 19
              label: c
            ,
              c_AutoComplete
                dataSource: @state.dataSource
                onSearch: @handleSearch
                placeholder: "请输入#{c}"
          ]
        , []
      )...
    ,
      c_FormItem {}
      ,
        c_Row {}
        ,
          c_Col
            xs: 24
            sm: 19
            offset: 5
          ,
            c_Button
              type: 'primary'
              style:
                float: 'right'
            , @props.btn   
    ]
    

export default PrjForm