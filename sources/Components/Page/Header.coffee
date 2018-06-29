import cfxify from 'cfx.react.dom'
import { Layout,Breadcrumb } from 'antd'
{ Header, Content, Footer } = Layout
BreadcrumbItem = Breadcrumb.Item
import { getLinks } from 'cfx.react.link.dom'
import ComA from '../UtilLink/ComA'

CFX = cfxify {
  'p'
  'h1'
  'span'
  Layout
  Breadcrumb
  BreadcrumbItem
  ComA
}

export default ({
  props...
}) =>

  {
    breadcrumb
    title
    description
    Link
  } = props

  {
    c_p
    c_h1
    c_span
    c_Layout
    c_Breadcrumb
    c_BreadcrumbItem
    c_ComA
  } = CFX
  render: ->
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
            key: 'breadcrumb'
            style:
              marginBottom: 16
            (
              breadcrumb.reduce (r, c, i) =>
                [
                  r...
                  c_BreadcrumbItem
                    key: "breadcrumb_#{i}"
                  ,
                    c_ComA
                      Link: getLinks
                        Link: @props.Links
                        kind: c.level
                      name: c.item
                    # c_domWithLink
                    #   Link: 
                    #     getLinks
                    #       Link: @props.Links
                    #       kind: c.level
                    #   domObj: =>
                    #     c_span
                    #       key: "span_#{i}"
                    #       ,
                    #         c.item
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