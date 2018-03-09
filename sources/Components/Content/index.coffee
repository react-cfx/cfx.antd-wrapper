import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import {
  PageContent
} from '../Page'

CFX = prefixDom {
  Card
  PageContent
}

export default ->

  render: ->
    {
      c_Card
      c_PageContent
    } = CFX

    if @props.Content
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
          else [
            c_Card
              key: 'Card2'
              bordered: false
            , @props.Content
          ]
    ]
    else []