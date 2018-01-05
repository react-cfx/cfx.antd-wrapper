import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Layout } from 'antd'

import SiderBar from '../Menu/MenuOne'
import ContentWithSider from './ContentWithSider'
import HocSiderContent from '../../Components/Layout/SiderContent'

CFX = prefixDom {
  SiderBar
  Layout
  ContentWithSider
}

MainPage = HocSiderContent(
  CFX.c_SiderBar {}
  CFX.c_ContentWithSider {}
  collapsed: true
)

CFX = {
  CFX...
  (
    prefixDom {
      MainPage
    }
  )...
}

class MainPage extends React.Component

  render: ->

    {
      c_Layout
      c_MainPage
    } = CFX

    c_Layout 
      className: 'ant-layout-has-sider'
      style:
        minHeight: '100vh'
    ,
      c_MainPage
        collapsible: true
        style:
          sider:
            overflow: 'auto'
            height: '100vh'

export default MainPage
