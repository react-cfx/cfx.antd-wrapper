import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import { Layout } from 'antd'
{ Sider, Content } = Layout

import {
  mapProps
  compose
} from 'recompose'

CFX = prefixDom {
  Layout
  Sider
  Content
}

getPropsChilden = (Obj) =>
  {
    props... 
    children
  } = Obj
  {
    props
    children
  }

hocMapProps = mapProps ({
  sider
  content
  ownerProps...
}) =>

  sider = getPropsChilden sider
  content = getPropsChilden content

  {
    sider: {
      sider...
      className: 'ant-layout-has-sider'
    }
    content
    ownerProps...
  }

enhance = compose hocMapProps

export default enhance ({
  layout
  sider
  content
}) =>

  {
    c_Layout
    c_Sider
    c_Content
  } = CFX

  c_Layout layout
  ,
    c_Sider sider.props
    ,
      sider.children
    c_Content content.props
    ,
      content.children
