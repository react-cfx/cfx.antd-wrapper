import React from 'react'
import {
  # cfxify
  prefixDom
} from 'cfx.dom'
import { Layout } from 'antd'

import SiderBar from './SiderBar'
import SiderWithContent from './SiderWithContent'
import HocSiderContent from '../Layout/SiderContent'

CFX = prefixDom {
  SiderBar
  Layout
  SiderWithContent
}

MainPage = HocSiderContent(
  CFX.c_SiderBar {}
  CFX.c_SiderWithContent {}
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
