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
            if @props.btnleftsty
            then [
              c_Button
                key: 'btnleftsty'
                type: 'primary'
                onClick:
                  if @props.linkto
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
                  marginRight: '10px'
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
export default PrjForm