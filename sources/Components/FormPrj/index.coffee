import cfxify from 'cfx.react.dom'
import React, { Component } from 'react'
import moment from 'moment'
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

CFX = cfxify {
  'span'
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

class FormPrj extends Component
  constructor: (props) ->
    super props
    @state =
      
    @
  
  render: ->

    {
      c_span
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
    
    ChangeSelect =
      if @props.ChangeSelect?
      then @props.ChangeSelect
      else (ChangeSelect) =>
        console.log 'pls run ChangeSelect function!'
        console.log ChangeSelect
    onChangeSelect = (value,key) ->
      ChangeSelect value,key
    
    ChangeAddress =
      if @props.ChangeAddress?
      then @props.ChangeAddress
      else (ChangeAddress) =>
        console.log 'pls run ChangeAddress function!'
        console.log ChangeAddress
    onChangeAddress = (value,key) ->
      ChangeAddress value,key
    
    ChangeDate =
      if @props.ChangeDate?
      then @props.ChangeDate
      else (ChangeDate) =>
        console.log 'pls run ChangeDate function!'
        console.log ChangeDate
    onChangeDate = (date,dateString,key) ->
      ChangeDate date,dateString,key

    Change =
      if @props.Change?
      then @props.Change
      else (Change) =>
        console.log 'pls run Change function!'
        console.log Change
    onChange = (value, key) ->
      Change value, key
      
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
                      onChange: (date,dateString) -> onChangeDate date, dateString, c.key
                      style:
                        width: '356.25px'
                      placeholder: "请输入#{c.keys}"
                  ]
                  else if c.type is 'address'
                  then [
                    c_Cascader
                      key: "Cascader"
                      onChange: (value) -> onChangeAddress value, c.key
                      options: @props.options
                      placeholder: "请输入#{c.keys}"
                  ]
                  else if c.type is 'select'
                  then [
                    c_Select
                      onChange: (value) -> onChangeSelect value, c.key
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
                      onBlur: (value) -> onChange value,c.key
                      addonAfter: @props.selectAfter
                      placeholder: '请输入租赁时间'    
                  ]
                  else if c.type is 'number'
                  then [
                    c_InputNumber
                      key: 'InputNumber'
                      onBlur: (value) -> onChange value, c.key
                      style:
                        width: '196px'
                      min: '0'
                      max: '6000'
                      step: '50'
                      formatter: (value) => "￥    #{value}"
                  ]
                  else [
                    c_Input
                      onChange: (e) -> onChange e.target.value,c.key
                      key: "AutoComp"
                      placeholder: "请输入#{c.keys}"
                      defaultValue:
                        if c.defaultValue
                        then c.defaultValue
                        else ''
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
          maxWidth: '450px'
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
                  c_DatePicker {
                    key: "select"
                    onChange: (date, dateString) -> onChange dateString, c.key
                    (
                      if c.defaultValue
                      then {
                        defaultValue: moment c.defaultValue, 'YYYY/MM/DD'
                      }
                      else {}
                    )...
                    
                    style:
                      width: '356.25px'
                    placeholder: "请输入#{c.keys}"
                  }
                ]
                else if c.type is 'address'
                then [
                  c_Cascader
                    key: "Cascader"
                    onChange: (value) -> onChangeAddress value, c.key
                    options: @props.options
                    defaultValue: c.defaultValue
                    placeholder: "请输入#{c.keys}"
                ]
                else if c.type is 'select'
                then [
                  c_Select
                    key: 'Select'
                    onChange:(value) ->
                      onChange value, c.key
                    placeholder: "请输入#{c.keys}"  
                    style:
                      if c.style?
                      then c.style
                      else {}
                    defaultValue:
                      if c.defaultValue
                      then c.defaultValue
                      else ''
                  ,
                    if c.type is 'select'
                    then [
                      c.options.reduce (r, c)=>
                        [
                          r...
                          c_Option
                            value: c
                          , c
                        ]
                      , []  
                    ]
                ]
                else if c.type is 'inputSelect'
                then [
                  c_Input
                    key: 'Input'
                    onBlur: (value) -> onChange value, c.key
                    placeholder: '请输入租赁时间'
                    addonAfter: @props.selectAfter
                ]
                else if c.type is 'number'
                then [
                  c_InputNumber
                    key: 'InputNumber'
                    onChange: (value) -> onChange value.toString(), c.key
                    defaultValue: c.defaultValue
                    min: c.min
                    max: c.max
                    step: c.step
                    style:
                      width: c.width
                    formatter: c.formatter

                  # c_span
                  #   style:
                  #     marginLeft: '5px'
                  # , c.children
                ]
                else [
                  c_Input
                    onChange: (e) -> onChange e.target.value, c.key
                    key: "AutoComp"
                    placeholder: "请输入#{c.keys}"
                    defaultValue:
                      if c.defaultValue
                      then c.defaultValue
                      else ''
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

export default FormPrj
