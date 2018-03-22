import { prefixDom } from 'cfx.dom'
<<<<<<< HEAD
import { Layout,Breadcrumb } from 'antd'
{ Header, Content, Footer } = Layout
=======
import { Layout } from 'antd'
>>>>>>> 042365ec02611b218fa98f012d11a6ae7472ed92

CFX = prefixDom {
  Layout
}

export default ({
<<<<<<< HEAD
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
    
  
  







=======
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
>>>>>>> 042365ec02611b218fa98f012d11a6ae7472ed92
