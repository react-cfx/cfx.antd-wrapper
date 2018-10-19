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
  option
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
  # verification: (rule , value ,callback) =>
  #   console.log 'value', value
  #   @props.verification value, callback
  
  render: ->
    { getFieldDecorator } = @props.form
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
    onChange = (value, key, keys, unit) ->
      Change value, key, keys, unit
      
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
          @props.title.reduce (r, c, i) =>
            [
              r...
              c_Col
                key: "#{i}"
                sm:
                  span: 24
                  offset: 2
                md:
                  span: 12
                  offset: 2
                lg:
                  span: 8
                  offset: 2
                xl:
                  span: 5
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
                    c_Select {
                      key: 'Select'
                      onChange:(value) ->
                        onChange value, c.key
                      placeholder: "请输入#{c.keys}"  
                      style:
                        if c.style?
                        then c.style
                        else {}
                      (
                        if c.value
                          value: c.value
                        else {}
                      )...                        
                      defaultValue:
                        if c.defaultValue
                        then c.defaultValue
                        else ''
                    }
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
                      onChange: (e) -> onChange e.target.value, c.key, c.unit
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
                  c_DatePicker {
                    key: "select"
                    (
                      if c.value
                      then {
                        value: moment c.value, 'YYYY/MM/DD'
                      }
                      else {}
                    )...
                    
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
                    onChange: (value) -> onChangeAddress value,c.key
                    options: @props.options
                    defaultValue: c.defaultValue
                    placeholder: "请输入#{c.keys}"
                ]
                else if c.type is 'select'
                then [
                  c_Select {
                    key: 'Select'
                    onChange:(value) ->
                      onChange value, c.key, c.keys, c.unit
                    placeholder: "请输入#{c.keys}"
                    (
                      if c.value
                        value: c.value
                      else {}
                    )...
                    style:
                      if c.style?
                      then c.style
                      else {}
                    defaultValue:
                      if c.defaultValue
                      then c.defaultValue
                      else ''
                  }
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
                  c_InputNumber {
                    key: 'InputNumber'
                    onChange: (value) -> onChange value.toString(), c.key
                    defaultValue: c.defaultValue
                    min: c.min
                    max: c.max
                    step: c.step
                    (
                      if c.value
                      then value: c.value
                      else {}
                    )...
                    style:
                      width: c.width
                    formatter: c.formatter
                  }

                  c_span
                    key: 'span'
                    style:
                      marginLeft: '5px'
                  , c.children
                ]
                else [
                  if c.verification
                    getFieldDecorator("confirm#{i}",{
                      initialValue: c.defaultValue
                      rules: [
                          required: true
                          message: c.message
                        ,
                          validator: (rule , value ,callback) =>
                            c.verification value, callback
                      ]
                    })(
                        c_Input
                          onChange: (e) -> onChange e.target.value, c.key, c.keys, c.unit
                          key: "AutoComp"
                          placeholder: "请输入#{c.keys}"
                          style: c.style
                    )
                  else
                    c_Input {
                      onChange: (e) -> onChange e.target.value, c.key, c.keys, c.unit
                      key: "AutoComp"
                      placeholder: "请输入#{c.keys}"
                      style: c.style
                      (
                        if c.value
                          value: c.value
                        else {}
                      )...
                      initialvalue:
                        if c.defaultValue
                        then c.defaultValue
                        else ''
                    }
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
FormPrj = Form.create()(FormPrj)
export default FormPrj