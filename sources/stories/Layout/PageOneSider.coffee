import React from 'react'
import cfxify from 'cfx.react.dom'
import SiderContent from '../../Components/Layout/SiderContent'

import Menu from '../Menu/MenuOne'
import Content from './Content'

CFX = cfxify {
  SiderContent
  Menu
  Content
}

export default ->

  {
    c_SiderContent
    c_Menu
    c_Content
  } = CFX

  c_SiderContent

    layout:
      style:
        minHeigh: '100vh'

    sider:
      collapsible: true
      style:
        overflow: 'auto'
        height: '100vh'
      children:
        c_Menu {}

    content:
      children:
        c_Content {}
