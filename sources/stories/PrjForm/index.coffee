import { prefixDom } from 'cfx.dom'
import PrjForm from '../../Components/PrjForm/Form'

CFX = prefixDom {
  PrjForm
  'h1'
}

export default =>
  {
    c_PrjForm
    c_h1
  } = CFX

  c_PrjForm
    title: [
      '房客姓名'
      '手机号'
      '身份证号'
      '客户来源'
    ]
