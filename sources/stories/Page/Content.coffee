<<<<<<< HEAD
import { prefixDom } from 'cfx.dom'
import Content from '../../Components/Page/Content'

CFX = prefixDom {
  Content
  'h1'
}

export default =>
  {
    c_Content
    c_h1
  } = CFX

  c_Content
    PageContent:
      c_h1 {}
      , '引用Page中的Content，引入该组件传入PageContent: ... 即可'
=======
import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import ContentPage from '../../Components/Content'

CFX = prefixDom {
  'div'
  ContentPage
}

export default =>

  storiesOf 'ContentPage', module

  .add 'ContentPage'

  , =>

    {
      c_div
      c_ContentPage
    } = CFX

    c_ContentPage
      Content: [
        c_div {}
        , '123'
        c_div {}
        , '1234'
        c_div {}
        , '12345'
      ]
>>>>>>> 042365ec02611b218fa98f012d11a6ae7472ed92
