import { prefixDom } from 'cfx.dom'
import { Layout,Breadcrumb } from 'antd'
{ Header, Content, Footer } = Layout
BreadcrumbItem = Breadcrumb.Item

CFX = prefixDom {
  'div'
  'p'
  'h1'
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
    c_div
    c_p
    c_h1
    c_Breadcrumb
    c_BreadcrumbItem    
  } = CFX
  [
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
      , description
    ]
    else []
  ]
  
  







