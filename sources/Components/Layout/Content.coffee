# import { ddbs as dd } from 'ddeyes'
import prefixDom from 'cfx.react.dom'
import { Layout, Breadcrumb } from 'antd'
{ Header, Content, Footer } = Layout
BreadcrumbItem = Breadcrumb.Item

CFX = prefixDom {
  'div'
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
    breadcrumb
    footer
  } = props

  {
    c_div
    c_Breadcrumb
    c_BreadcrumbItem
    c_Header
    c_Content
    c_Footer
  } = CFX

  [
    (
      if header
      then [
        c_Header
          key: 'MainContentHeader'
          style:
            background: '#fff'
            padding: 0
        , header
      ]
      else []
    )...

    c_Content.apply null
    , [

      key: 'MainContentContent'
      style:
        margin: '0 16px'

      (
        if breadcrumb
        then [
          c_Breadcrumb.apply null
          , [
            style:
              margin: '12px 0'
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
      )...

      c_div
        style: 
          padding: 24
          background: '#fff'
          minHeight: 360
      , content
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
