import React from 'react'
import cfxify from 'cfx.dom'
import { Layout } from 'antd'

import MenuOne from '../Menu/MenuOne'
import MenuTwo from '../Menu/MenuTwo'

import Content from './Content'
import SiderContent from '../../Components/Layout/SiderContent'

CFX = cfxify {
  MenuOne
  MenuTwo
  Content
  SiderContent
}

export default =>

  {
    c_SiderContent
    c_Content
    c_MenuOne
    c_MenuTwo
  } = CFX

  c_SiderContent

    layout:
      style:
        minHeight: '100vh'

    sider:
      collapsible: true
      style:
        overflow: 'auto'
        height: '100vh'
        # position: 'fixed'
        # left: 0
      children:
        c_MenuOne {}

    content:
      children:

        c_SiderContent

          layout:
            style:
              minHeight: '100vh'

          sider:
            style:
              backgroundColor: 'white'
              overflow: 'auto'
              height: '100vh'
            children:
              c_MenuTwo {}

          content:
            children:
              c_Content {}
