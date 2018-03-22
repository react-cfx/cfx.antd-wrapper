import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
import React,{ Component } from 'react'

import {
  Form
  Input
  Row
  Col
  Button
} from 'antd'

FormItem = Form.FormItem

CFX = prefixDom {
  'div'
  Button
  Form
  FormItem
  Input
  Row
  Col
}

class PrjForm extends Component
  constructor: (props) ->
      super props
      @state =
        dataSource: []
      @
  

  render: ->

    {
      c_div
      c_Form
      c_Button
      c_FormItem
      c_Input
      c_Row
      c_Col
    } = CFX

    