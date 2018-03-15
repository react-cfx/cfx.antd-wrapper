import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import {
  PageContent
} from '../Page'

CFX = prefixDom {
  'div'
  Card
  PageContent
}

export default ->

  render: ->

    {
      Content
    } = props

    {
      c_div
      c_Card
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
                c_div
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
          c_Card
            bordered: false
          , @props.Content
    ]