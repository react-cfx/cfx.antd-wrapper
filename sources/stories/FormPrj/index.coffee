import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import FormPrj from '../../Components/FormPrj/index'
import { Select } from 'antd'
Option = Select.Option
CFX = cfxify {
  FormPrj
  Select
  Option
}

export default =>

  storiesOf 'FormPrj', module

  .add 'FormPrj'

  , =>

    {
      c_FormPrj
      c_Select
      c_Option
    } = CFX

    c_FormPrj
      Layout: 'vertical'
      title: [
          keys: '省'
          type: 'select'
          key: 'Province'
          defaultValue: '支付宝'
          options: [
            '支付宝'
            '微信'
            '现金'
          ]
        ,
          keys: '省'
          type: 'address'
          key: 'Province'
      ]