import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
import {
  Form
  Input
  Row
  Col
  Button
  DatePicker
  Cascader
  Select
  InputNumber
} from 'antd'

Option = Select.Option
FormItem = Form.Item

CFX = prefixDom {
  'div'
  Button
  Form
  FormItem
  Input
  Row
  Col
  DatePicker
  Cascader
  Select
  Option
  InputNumber
}

class PrjForm extends Component
  constructor: (props) ->
    super props
    @state =
      # dataSource: []
    @
  onChangeSelect: (value) ->
    console.log value 
  onChangeAddress: (value) ->
    console.log value 
  onChangeDate: (date, dateString) ->
    console.log date,dateString
  onChange: (e) ->
    console.log e.target.value
  options: [
      value: '湖北'
      label: '湖北'
      children: [
        value: '武汉'
        label: '武汉'
        children: [
          value: '武昌'
          label: '武昌'
        ]
      ]
    ,
      value: '四川'
      label: '四川'
      children: [
        value: '成都'
        label: '成都'
        children: [
          value: '高新区'
          label: '高新区'
        ]
      ]
  ]
  
  {
    c_Option
    c_Select
  } = CFX
  
  selectAfter:
    c_Select
      defaultValue: '月'
      onChange: (value) => console.log value 
      style:
        width: '80px'
    ,
      c_Option
        value: '日'
      , '日'
      c_Option
        value: '年'
      , '年'
  
  render: ->

    {
      c_div
      c_Form
      c_Button
      c_FormItem
      c_Input
      c_Row
      c_Col
      c_DatePicker
      c_Cascader
      c_Select
      c_Option
      c_InputNumber
    } = CFX
    console.log @props
    if @props.Layout is 'vertical'
    then [
      c_Form
        key: 'Form'
        style:
          margin: '40px auto 0'
          minWidth: '500px'
      ,
        c_Row
          key: 'Row'
          style:
            marginLeft: '-8px'
            marginRight: '-8px'
        ,
          @props.title.reduce (r,c,i) =>
            [
              r...
              c_Col
                key: "#{i}"
                sm:
                  span: 24
                md:
                  span: 12
                lg:
                  span: 8
                xl:
                  span: 6
                  offset: 2
                style:
                  paddingLeft: '8px'
                  paddingRight: '8px'
              ,
                c_FormItem
                  key: "Item#{i}"
                  label: c.keys
                ,
                  if c.type is 'date'
                  then [
                    c_DatePicker
                      key: "select"
                      onChange: @onChangeDate
                      style:
                        width: '396px'
                      placeholder: "请输入#{c.keys}"
                  ]
                  else if c.type is 'address'
                  then [
                    c_Cascader
                      key: "Cascader"
                      onChange: @onChangeAddress
                      options: @options
                      placeholder: "请输入#{c.keys}"
                  ]
                  else if c.type is 'select'
                  then [
                    c_Select
                      onChange: @onChangeSelect
                      key: 'Select'
                      defaultValue: '支付宝'
                      style:
                        width: '120px'
                    ,
                      c_Option
                        value: '微信'
                      , '微信'
                      c_Option
                        value: '网上银行'
                      , '网上银行'
                  ]
                  else if c.type is 'inputSelect'
                  then [
                    c_Input
                      key: 'Input'
                      onBlur: @onChange
                      addonAfter: @selectAfter
                      placeholder: '请输入租赁时间'
                  ]
                  else if c.type is 'number'
                  then [
                    c_InputNumber
                      key: 'InputNumber'
                      onBlur: @onChange
                      style:
                        width: '196px'
                      min: '0'
                      max: '6000'
                      step: '50'
                      formatter: (value) => "￥    #{value}"
                  ]
                  else [
                    c_Input
                      onBlur: @onChange
                      key: "AutoComp"
                      placeholder: "请输入#{c.keys}"
                  ]
            ]
          , []
      ]

    else [
      c_Form.apply @, [
        key: 'Form'
        onSubmit: @handleSubmit
        style:
          margin: '40px auto 0'
          maxWidth: '500px'
        (
          @props.title.reduce (r, c , i) =>
            [
              r...
              c_FormItem
                labelCol:
                  span: 5
                wrapperCol:
                  span: 19
                label: c.keys
              ,
                if c.type is 'date'
                then [
                  c_DatePicker
                    key: "select"
                    onChange: @onChangeDate
                    style:
                      width: '396px'
                    placeholder: "请输入#{c.keys}"
                ]
                else if c.type is 'address'
                then [
                  c_Cascader
                    key: "Cascader"
                    onChange: @onChangeAddress
                    options: @options
                    placeholder: "请输入#{c.keys}"
                ]
                else if c.type is 'select'
                then [
                  c_Select
                    key: 'Select'
                    defaultValue: '支付宝'
                    onChange: @onChangeSelect
                    style:
                      width: '120px'
                  ,
                    c_Option
                      value: '支付宝'
                    , '支付宝'
                    c_Option
                      value: '微信'
                    , '微信'
                    c_Option
                      value: '网上银行'
                    , '网上银行'
                ]
                else if c.type is 'inputSelect'
                then [
                  c_Input
                    key: 'Input'
                    onBlur: @onChange
                    placeholder: '请输入租赁时间'
                    addonAfter: @selectAfter
                ]
                else if c.type is 'number'
                then [
                  c_InputNumber
                    key: 'InputNumber'
                    onBlur: @onChange
                    style:
                      width: '196px'
                    min: '0'
                    max: '6000'
                    step: '50'
                    formatter: (value) => "￥    #{value}"
                ]
                else [
                  c_Input
                    onBlur:
                      if @props.onChange
                      then @props.onChange
                      else @onChange
                    key: "AutoComp"
                    placeholder: "请输入#{c.keys}"
                ]
            ]
          , []
        )...

        c_FormItem {}
        ,
          c_Row {}
          ,
            c_Col
              xs: 24
              sm: 19
              offset: 5
            ,
              if @props.Btn
              then [
                @props.Btn
              ]
              else []
      ]
    ]

export default PrjForm