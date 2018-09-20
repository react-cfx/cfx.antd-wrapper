import cfxify from 'cfx.react.dom'
import { Card } from 'antd'
import PageContent from '../Page/Content'

CFX = cfxify {
  Card
  PageContent
}

export default ({
  children
}) =>

  {
    c_Card
    c_PageContent
  } = CFX

  c_PageContent {}
  ,
    c_Card
      bordered: false
    , children
