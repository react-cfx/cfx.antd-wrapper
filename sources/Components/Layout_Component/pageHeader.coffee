import { prefixDom } from 'cfx.dom'
import { Layout,Breadcrumb } from 'antd'
{ Header, Content, Footer } = Layout
BreadcrumbItem = Breadcrumb.Item

CFX = prefixDom {
  'p'
  'h1'
  Layout
  Breadcrumb
  BreadcrumbItem
}

export default ({
  props...
}) =>

  {
    breadcrumb
    title
    description
  } = props

  {
    c_p
    c_h1
    c_Layout
    c_Breadcrumb
    c_BreadcrumbItem    
  } = CFX

  c_Layout
    style:
      background: '#fff'
      padding: '16px 32px 0'
      borderBottom: '1px solid #e8e8e8'
  ,       
    if breadcrumb
    then [
      c_Breadcrumb.apply null
      , [
          style:
            marginBottom: 16
          (
            breadcrumb.reduce (r, c, i) =>
              [
                r...
                c_BreadcrumbItem
                  key: "breadcrumb_#{i}"
                , c
              ]
            , []
          )...
      ]
    ]
    else []
    
    if title
    then [
      c_h1
        style:
          fontSize: 20
      , title
    ]
    else []

    if description
    then [
      c_p
        style:
          paddingBottom: 16
      , description
    ]
    else []
  
  







