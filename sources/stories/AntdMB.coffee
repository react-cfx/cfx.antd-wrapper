import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import AntdMB from '../Components/AntdMB'
import 'antd-mobile/dist/antd-mobile.css'

CFX = prefixDom {
  AntdMB
}

export default ->

  storiesOf 'AntdMB', module

  .add 'AntdMB'
  , =>

    { c_AntdMB } = CFX
    c_AntdMB {}
