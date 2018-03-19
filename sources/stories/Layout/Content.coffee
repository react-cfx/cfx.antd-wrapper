import { prefixDom } from 'cfx.dom'
import MainContent from '../../Components/Layout/MainContent'

CFX = prefixDom {
  MainContent
}

export default =>

  {
    c_MainContent
  } = CFX

  c_MainContent
    header: ''
    breadcrumb: [
      'User'
      'Bill'
    ]
    content: 'Bill is a cat.'
    footer: 'Ant Design ©2016 Created by Ant UED'
