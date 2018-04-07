import React, { Component } from 'react'
import cfxify from 'cfx.dom'
import getLinks from 'cfx.link'
import { Button } from 'antd'

CFX = cfxify {
  Button
}
export default (Link) => ({
  location
}) =>
  CFX = CFX._.extends (
    getLinks Link
    ,
      onSubmitToHouseList: '/addonSubmitToHouseList'
  )
  
  render: ->

    {
      c_Button

      c_onSubmitToHouseList
    } = CFX

    c_onSubmitToHouseList {}
    ,
      c_Button
        type: 'primary'
        htmlType: 'submit'
        style:
          maxWidth: '300px'
          float: 'right'
          width: '100%'
      , '登录'