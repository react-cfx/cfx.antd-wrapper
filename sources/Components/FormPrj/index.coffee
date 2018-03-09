import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
import React, { Component } from 'react'
# import dd from 'ddeyes'
import {
  Form
  Input
  Row
  Col
  Button
  AutoComplete
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
  AutoComplete
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
        dataSource: []
      @
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
      defaultValue: '默认'
      style:
        width: '80px'
    ,
      c_Option
        value: '日'
      , '日'
      c_Option
        value: '月'
      , '月'
      c_Option
        value: '年'
      , '年'


  onChangeSelect: (value) ->
    console.log 'changed',value
  onChange3: (value) ->
    console.log "selected#{value}"
  onChange2: (value) ->
    console.log value
  onChange: (date, dateString) ->
    console.log date, dateString
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
      c_DatePicker
      c_Cascader
      c_Select
      c_Option
      c_InputNumber
    } = CFX

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
                  key: "item#{i}"
                  label: c.keys
                ,
                  if c.type is 'data'
                  then [
                    c_DatePicker
                      key: "select"
                      style:
                        width: '396px'
                      onChange: @onChange
                      placeholder: "请输入#{c.keys}"
                  ]
                  else if c.type is 'address'
                  then [
                    c_Cascader
                      key: "Cascader"
                      options: @options
                      onChange: @onChange2
                      placeholder: "请输入#{c.keys}"
                  ]
                  else if c.type is 'select'
                  then [
                    c_Select
                      key: 'Select'
                      defaultValue: '默认'
                      style:
                        width: '120px'
                      onChange: @onChange3
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
                      addonAfter: @selectAfter
                      placeholder: '请输入租赁时间'
                  ]
                  else if c.type is 'number'
                  then [
                    c_InputNumber
                      key: 'InputNumber'
                      style:
                        width: '196px'
                      min: '0'
                      max: '10'
                      step: '0.1'
                      formatter: (value) => "￥(千)    #{value}"
                  ]
                  else [
                    c_AutoComplete
                      key: "AutoComp"
                      dataSource: @state.dataSource
                      onSearch: @handleSearch
                      placeholder: "请输入#{c.keys}"
                  ]
            ]
          , []
      ]

    else [
      c_Form.apply @, [
        style:
          margin: '40px auto 0'
          maxWidth: '500px'
        (
          @props.title.reduce (r, c , i) =>
            [
              r...
              c_FormItem
                key: "item#{i}"
                labelCol:
                  span: 5
                wrapperCol:
                  span: 19
                label: c.keys
              ,
                if c.type is 'date'
                then [
                  c_DatePicker
                    key: "select#{i}"
                    style:
                      width: '196px'
                    onChange: @onChange
                    placeholder: "请输入#{c.keys}"
                ]
                else if c.type is 'address'
                then [
                  c_Cascader
                    key: "Cascader#{i}"
                    options: @options
                    onChange: @onChange2
                    placeholder: "请输入#{c.keys}"
                ]
                else if c.type is 'select'
                then [
                  c_Select
                    defaultValue: '默认'
                    style:
                      width: '196px'
                    onChange: @onChange3
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
                    addonAfter: @selectAfter
                    placeholder: '请输入租赁时间'
                ]
                else if c.type is 'number'
                then [
                  c_InputNumber
                    style:
                      width: '196px'
                    min: '0'
                    max: '10'
                    step: '0.1'
                    formatter: (value) => "￥(千)   #{value}"
                    onChange: @onChangeSelect
                ]
                else [
                  c_AutoComplete
                    key: "AutoComp#{i}"
                    dataSource: @state.dataSource
                    onSearch: @handleSearch
                    placeholder: "请输入#{c.keys}"
                ]
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
              if @props.btnleftsty
              then [
                c_Button
                  key: 'btnleftsty'
                  type: 'primary'
                  onClick:
                    if @props.linktoup
                    then linkTo @props.linktoup[0], @props.linktoup[1]
                    else @onSelect
                  style:
                    float: 'left'
                    marginLeft: '-70px'
                , @props.btnleftsty
              ]
              else []
              if @props.btnleft
              then [
                c_Button
                  key: 'btnleft'
                  type: 'primary'
                  onClick:
                    if @props.linktoup
                    then linkTo @props.linktoup[0], @props.linktoup[1]
                    else @onSelect
                  style:
                    float: 'left'
                , @props.btnleft
              ]
              else []
              if @props.btn
              then [
                c_Button
                  key: 'btn'
                  type: 'primary'
                  onClick:
                    if @props.linktobtn
                    then linkTo @props.linktobtn[0], @props.linktobtn[1]
                    else @onSelect
                  style:
                    float: 'right'
                    marginLeft: '10px'
                , @props.btn
              ]
              else []
              if @props.btnright
              then [
                c_Button
                  key: 'btnright'
                  type: 'primary'
                  onClick:
                    if @props.linktodown
                    then linkTo @props.linktodown[0], @props.linktodown[1]
                    else @onSelect
                  style:
                    float: 'right'
                , @props.btnright
              ]
              else []
      ]
    ]

export default PrjForm