import { ddbs as dd } from 'ddeyes' 
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { List, InputItem } from 'antd-mobile'
import { HotKeys } from 'react-hotkeys'

CFX = prefixDom {
  List
  InputItem
  HotKeys
}

class AntdMB extends Component

  render: ->
    {
      c_List
      c_InputItem
      c_HotKeys
    } = CFX

    keyMap =
      clear: 'enter'
    handlers =
      clear: (
        -> @refs.RefInput.clearInput()
      ).bind @

    c_HotKeys {
      keyMap
      handlers
    }
    ,
      c_List {}
      ,
        c_InputItem
          clear: true
          placeholder: "please input todo."
          ref: 'RefInput'
          onChange: (v) -> dd v

export default AntdMB
