import { prefixDom } from 'cfx.dom'
import Header from '../../Components/Page/Header'

CFX = prefixDom {
  Header
  'h1'
}

export default =>
  {
    c_Header
    c_h1
  } = CFX

  c_Header
    breadcrumb: [
      'User'
      'lzr123456'
    ]
    title: '这是标题'
    description: '这是（如何使用 引入组件 传入breadcrumb: ...[数组]
    title: ... [任意字符串]
    description: ... [任意字符串]）描述'
