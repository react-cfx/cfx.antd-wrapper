import cfxify from 'cfx.dom'
import Content from '../../Components/Layout/Content'

CFX = cfxify {
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
