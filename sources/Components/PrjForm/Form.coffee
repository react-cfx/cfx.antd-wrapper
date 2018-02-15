import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
# import dd from 'ddeyes'
import {
  Form
  Input
  Row
  Col
  Button
  AutoComplete
} from 'antd'

FormItem = Form.Item

CFX = prefixDom {
  'div'
  Button
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
      c_Button
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
            if @props.btnright
            then [
              c_Button
                type: 'primary'
                style:
                  float: 'right'
              , @props.btnright
            ]
            else []
            if @props.btn
            then [
              c_Button
                type: 'primary'
                style:
                  float: 'right'
                  marginLeft: '10px'
                  marginRight: '-40px'
              , @props.btn
            ]
            else []
            if @props.btnleft
            then [
              c_Button
                type: 'primary'
                style:
                  float: 'left'
              , @props.btnleft
            ]
            else []

    ]


export default PrjForm