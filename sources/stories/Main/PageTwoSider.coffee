import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Layout } from 'antd'

import SiderBar from '../Menu/MenuOne'
import SiderContent from '../Menu/MenuTwo'

import MainContent from '../../stories/Main/Content'
import HocSiderContent from '../../Components/Layout/SiderContent'

CFX = prefixDom {
  SiderBar
  SiderContent
  Layout
  MainContent
}

MainPage = HocSiderContent(
  CFX.c_SiderContent {}
  CFX.c_MainContent {}
)

CFX = {
  CFX...
  (
    prefixDom {
      MainPage
    }
  )...
}

MainPage = HocSiderContent(
  CFX.c_SiderBar {}
  CFX.c_MainPage
    style:
      sider:
        backgroundColor: 'white'
        overflow: 'auto'
        height: '100vh'
        # position: 'fixed'
        # left: 0
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

class SiderBySider extends React.Component

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
        className:
          layout: 'ant-layout-has-sider'

export default SiderBySider
