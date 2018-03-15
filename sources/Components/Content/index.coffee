import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import card from '../Cards/card'
import {
  PageContent
} from '../Page'

CFX = prefixDom {
  Card
  card
  PageContent
}

export default ->

  render: ->

    {
      Content
    } = props

    {
      c_Card
      c_card
      c_PageContent
    } = CFX

    if @props.many is true
    then [
      c_PageContent
        key: 'PageContent'
        PageContent:
          if @props.many is true
          then [
            @props.Content.reduce (r,c,i) =>
              [
                r...
                c_Card
                  key: "Card_#{i}"
                  style: 
                    marginBottom: 20
                  bordered: false
                ,
                  c
              ]
            , []
          ]
    ]
    else [
      c_PageContent
        key: 'PageContent'
        PageContent:
          c_card
            bordered: false
          , @props.Content
    ]