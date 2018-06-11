import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import Page from '../../Components/Page/Page'
import { getLinks } from 'cfx.react.link.dom'
import Links from '../Links'
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
          item: '第一级'
          level: 'Welcome'
        ,
          item: '第二级'
          level: 'Welcome'
        ,
          item: '第三级'
          level: 'Welcome'
      ]
      Links: Links()
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
