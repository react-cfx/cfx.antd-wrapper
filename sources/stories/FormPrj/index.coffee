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
      # Layout: 'vertical'
      title: [
        keys: '签约日期'
        type: 'date'
        key: 'contractData'
        defaultValue: '2015-02-2'
      ]