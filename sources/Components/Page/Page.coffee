import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import Header from './Header'
import Contents from '../Content'
import PageContent from '../Page/Content'

CFX = prefixDom {
  'div'
  Card
  Header
  Contents
  PageContent
}

export default (props) =>

  {
    title
    header01
    header02
    Content
    many
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
      breadcrumb: [
        header01
        header02
      ]

    (
      if many?
      then [
        c_PageContent
          key: 'PageContent'
        ,
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
                , c
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