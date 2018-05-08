import prefixDom from 'cfx.react.dom'
import { Layout } from 'antd'

CFX = prefixDom {
  Layout
}

export default ({
  children
}) =>

  {
    c_Layout
  } = CFX

  c_Layout
    style:
      background: '#f0f2f5'
      padding: '24px 24px 24px 24px'
  ,
    children
