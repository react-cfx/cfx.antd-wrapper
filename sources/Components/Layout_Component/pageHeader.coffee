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
      key: 'layout2'
      background: '#fff'
      padding: '16px 32px 0'
      borderBottom: '1px solid #e8e8e8'
  ,       
    if breadcrumb
    then [
      c_Breadcrumb.apply null
      , [
          style:
            key: 'breadcrumb'
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
        key: 'title'
        style:
          fontSize: 20
      , title
    ]
    else []

    if description
    then [
      c_p
        key: 'sub'
        style:
          paddingBottom: 16
      , description
    ]
    else []
  
  







