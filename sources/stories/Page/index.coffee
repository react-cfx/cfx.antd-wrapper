import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Page from '../../Components/Page/Page'

CFX = prefixDom {
  'div'
  Page
}

export default =>

  storiesOf 'Page', module

  .add 'Page'

  , =>

    {
      c_div
      c_Page
    } = CFX

    c_Page
      key: 'Page'
      title: '这是一个标题'
      header01: '面包屑'
      header02: '面包屑'
      Content:
        c_div {}
        , '213'
      # many: [
      #   c_div {}
      #   , '2123'
      #   c_div {}
      #   , '213'
      #   c_div {}
      #   , '21311'
      # ]