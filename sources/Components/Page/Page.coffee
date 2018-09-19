import cfxify from 'cfx.react.dom'
import { Card } from 'antd'
import Header from './Header'
import Contents from '../Content'
import PageContent from '../Page/Content'

CFX = cfxify {
  'div'
  Card
  Header
  Contents
  PageContent
}

export default (props) =>

  {
    title
    breadcrumb
    Content
    many
    Link
  } = props

  {
    c_div
    c_Card
    c_Header
    c_Contents
    c_PageContent
  } = CFX

  [
    c_Header
      key: 'Header'
      title: title
      breadcrumb: breadcrumb
      Link: Link

    (
      if many?
      then [
        c_PageContent
          key: 'PageContent'
          many.reduce (r, c, i) =>
            [
              r...
              c_div
                key: "Card_#{i}"
                style:
                  marginBottom: '20px'
              ,
                c_Card
                  key: "Card_#{i}"
                  bordered: false
                  title: c.title
                , c.label
            ]
          , []
      ]
      else (
        if Content?
        then [
          c_Contents
            key: 'Contents'
          , Content
        ]
        else []
      )
    )...
  ]