import React, { Component } from 'react'
import cfxify from 'cfx.dom'
import {
  Modal
  Button
  Row
  Col
  Form
  Input
  message
} from 'antd'

FormItem = Form.Item

CFX = cfxify {
  'div'
  'p'
  'a'
  Modal
  Button
  Row
  Col
  Form
  FormItem
  Input
}

class PopModal extends Component

  constructor: (props) ->
    super props
    @state =
      visible: false
    @

  showModal: () =>
    @setState
      visible: true

  handleOk: (e) =>
    @setState
      visible: false
      

  handleCancel: (e) =>
    console.log 'Clicked cancel button'
    @setState
      visible: false

  render: ->

    {
      c_div
      c_Modal
      c_Button
      c_Row
      c_Col
      c_Form
      c_FormItem
      c_Input
    } = CFX

    c_div {}
    ,
      c_Button
        shape: @props.shape
        icon: @props.icon
        type: @props.type
        onClick: @showModal
        style: @props.style
      , @props.BtnTitle

      c_Modal
        title: @props.ModalTitle
        okText: '确定'
        cancelText: '取消'
        visible: @state.visible
        onOk: @handleOk
        onCancel: @handleCancel
      ,
        @props.ModalContent

export default PopModal