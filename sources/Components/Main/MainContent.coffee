import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Layout, Breadcrumb } from 'antd'
{ Header, Content, Footer } = Layout
BreadcrumbItem = Breadcrumb.Item

CFX = prefixDom {
  default: {
    'div'
  }
  Layout
  Breadcrumb
  BreadcrumbItem
  Header
  Content
  Footer
}

class Main extends React.Component

  render: ->

    {
      c_div

      c_Layout
      c_Breadcrumb
      c_BreadcrumbItem
      c_Header
      c_Content
      c_Footer
    } = CFX

    [
      c_Header
        key: 'MainContentHeader'
        style:
          background: '#fff'
          padding: 0
      c_Content
        key: 'MainContentContent'
        style:
          margin: '0 16px'
      ,
        c_Breadcrumb
          style:
            margin: '12px 0'
        ,
          c_BreadcrumbItem {}, 'User'
          c_BreadcrumbItem {}, 'Bill'
        c_div
          style: 
            padding: 24
            background: '#fff'
            minHeight: 360
        , 'Bill is a cat.'
      c_Footer
        key: 'MainContentFooter'
        style:
          textAlign: 'center'
      , 'Ant Design ©2016 Created by Ant UED'
    ]

export default Main
