import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import PrjForm from '../../Components/PrjForm/Form'

CFX = prefixDom {
  PrjForm
}

export default ->

  storiesOf 'PrjForm', module

  .add 'index'

  , =>

    { c_PrjForm } = CFX

    c_PrjForm
      title: [
        '房客姓名'
        '手机号'
        '身份证号'
        '客户来源'
      ]
      btnright: '下一步'
      linkto: [
        'Page'
        'Header'
      ]