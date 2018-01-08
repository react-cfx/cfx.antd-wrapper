import { prefixDom } from 'cfx.dom'

import Menu from '../Menu/MenuOne'
import ContentWithSider from './ContentWithSider'
import SiderContent from '../../Components/Layout/SiderContent'

CFX = prefixDom {
  Menu
  ContentWithSider
  SiderContent
}

export default =>

  {
    c_Menu
    c_ContentWithSider
    c_SiderContent
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
      children:
        c_Menu {}

    content:
      style:
        height: '100vh'
      children:
        c_ContentWithSider {}
