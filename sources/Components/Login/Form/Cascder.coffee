import FormField from '../../Form/Field'
import React, { Component } from 'react'
import cfxify from 'cfx.react.dom'
import domWithLink from 'cfx.react.link.dom'
import { Radio , Cascader } from 'antd'
import nb from './style'
RadioGroup = Radio.Group

CFX = cfxify {
      'a'
      'div'
      'span'
      FormField
      Cascader
      Radio
      RadioGroup
    }



class Dropdowns extends Component

  constructor: (props) ->
    super props
    
    @state =
      value: 1

  onChange: (e) =>
    @setState
      value: e.target.value

  render: ->

    {
      c_a
      c_div
      c_span
      c_FormField
      c_Cascader
      c_Radio
      c_RadioGroup
    } = CFX

    c_FormField {}
    ,
      c_RadioGroup {
        value: @props.value
        (
          if @props.Change
          then onChange: @props.Change
          else onChange: @onChange
        )...
      }
      ,
        (
          if @props.values
            @props.values.reduce (r,c,i) =>
              [
                r...
                c_Radio
                  value: (i+1)
                , c
              ]
            ,[]
          else
            c_Radio
              value: 1
            , '管理员'
        )...
        # c_Radio
        #   value: 1
        # , 
        #   if @props.text
        #   then @props.text
        #   else '管理员'
        # c_Radio
        #   value: 2
        # , 
        #   if @props.textTwo
        #   then @props.textTwo
        #   else '其他'
      # c_Cascader {
      #   key: 'Dropdown'
      #   options: @props.options
      #   (
      #     if @props.Change
      #     then onChange: @props.Change
      #     else {}
      #   )...
      #   # autoFocus: true
      #   defaultValue: @props.defaultValue
      # }


       

export default Dropdowns