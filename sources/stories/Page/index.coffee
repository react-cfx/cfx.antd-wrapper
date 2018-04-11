import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
import Page from '../../Components/Page/Page'

CFX = cfxify {
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
      breadcrumb: [
        '面包屑'
        '面包屑'
        '面包屑'
        '面包屑'
      ]
      # Content:
      #   c_div {}
      #   , '123'
      many: [
          label:
            c_div {}
            , '2123'
          title: '123'
        ,  
          label:
            c_div {}
            , '2123'
          title: '123'
        ,  
          label:
            c_div {}
            , '2123'
          title: '123'
      ]
