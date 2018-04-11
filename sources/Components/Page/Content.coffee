import cfxify from 'cfx.dom'
import { Layout } from 'antd'

CFX = cfxify {
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
