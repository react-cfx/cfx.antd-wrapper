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
    pageContent
  } = props

  {
    c_Layout  
  } = CFX
  
  if pageContent
  then [
    c_Layout
      style:
        background: '#f0f2f5'
        padding: '24px 24px 0'
    , pageContent      
  ]
  else []
    
  
  







