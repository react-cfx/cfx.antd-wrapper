import { storiesOf } from '@storybook/react'
<<<<<<< HEAD
import Header from './Header'
import Content from './Content'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Header
  Content 
}

export default ->

  storiesOf 'Page', module

  .add 'Header'

  , =>

    { c_Header } = CFX

    c_Header {}
  
  . add 'Content'
  , =>

    { c_Content } = CFX

    c_Content {}
=======
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
>>>>>>> 042365ec02611b218fa98f012d11a6ae7472ed92
