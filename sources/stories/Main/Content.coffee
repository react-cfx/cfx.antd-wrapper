import { prefixDom } from 'cfx.dom'
import Content from '../../Components/Main/Content'

CFX = prefixDom {
  Content
}

export default =>

  {
    c_Content
  } = CFX

  c_Content
    header: ''
    breadcrumb: [
      'User'
      'Bill'
    ]
    content: 'Bill is a cat.'
    footer: 'Ant Design ©2016 Created by Ant UED'
