import { prefixDom } from 'cfx.dom'
import { Layout,Breadcrumb } from 'antd'
{ Header, Content, Footer } = Layout

CFX = prefixDom {
  Layout
}

export default ({
  props...
}) =>

  {
    PageContent
  } = props

  {
    c_Layout  
  } = CFX
  
  if PageContent
  then [
    c_Layout
      key: 'layout1'
      style:
        background: '#f0f2f5'
        padding: '24px 24px 24px 24px'
    , PageContent
  ]
  else []
    
  
  







