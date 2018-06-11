import cfxify from 'cfx.react.dom'
import { Layout, Breadcrumb } from 'antd'
import nb from './style'
{ Header, Content, Footer } = Layout
BreadcrumbItem = Breadcrumb.Item

CFX = cfxify {
  'div'
  'p'
  'h1'
  Breadcrumb
  BreadcrumbItem
  Header
  Content
  Footer
}

export default ({
  content
  props...
}) =>
  
  {
    header
    PageHeader
    title
    description
    breadcrumb
    footer
  } = props

  {
    c_div
    c_p
    c_h1
    c_Breadcrumb
    c_BreadcrumbItem
    c_Header
    c_Content
    c_Footer
    c_Icon
    c_Row
    c_Col
    c_Badge
  } = CFX

  [
    (
      if header
      then [
        c_Header
          key: 'MainContentHeader'
          style:
            marginBottom: '1px'
            background: '#fff'
        , header
      ]
      else []
    )...
      
    (
      if PageHeader
      then [
        PageHeader
      ]
      else []
    )...
 
    c_Content.apply null
    , [

      key: 'MainContentContent'
      style:
        margin: '16px'
        
      if content
      then [
        c_div
          key: 'layout3'
          style: 
            background: '#fff'
            minHeight: 360
        , content 
      ]
      else []     
    ]

    (
      if footer
      then [
        c_Footer
          key: 'MainContentFooter'
          style:
            textAlign: 'center'
        , footer
      ]
      else []
    )...

  ]