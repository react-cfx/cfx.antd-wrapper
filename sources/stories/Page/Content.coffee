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
