import cfxify from 'cfx.react.dom'
import Header from '../../Components/Page/Header'
import Links from '../Links'

CFX = cfxify {
  Header
  'h1'
}

export default =>
  {
    c_Header
    c_h1
  } = CFX

  c_Header
    # Link1:
    #   getLinks
    Link: Links
    kind: 'Welcome'
    # Link2:
    #   getLinks
    #     Link: Links
    #     kind: 'Welcome'
    breadcrumb: [
      'User'
      'lzr123456'
    ]
    title: '这是标题'
    description: '这是（如何使用 引入组件 传入breadcrumb: ...[数组]
    title: ... [任意字符串]
    description: ... [任意字符串]）描述'
