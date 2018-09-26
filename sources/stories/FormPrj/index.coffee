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
          value: "2010-10-10"
        ,
          keys: '签约日期'
          type: 'date'
          key: 'contractData'
          value: "2010-10-10"
        ,
          keys: '签约日期1'
          type: 'b'
          key: 'c'
        ,
          keys: '签约日期'
          type: 'b'
          key: 'c'
          defaultValue: '134'
          message: '请输入'
          verification: (value, callback) =>
            if value isnt '1'
              callback '请输入正确的日期'
            else
              callback()          
        ,
          keys: '签约日期'
          type: 'a'
          key: 'a'
          message: '请输入1'
          verification: (value, callback) =>
            if value isnt '1'
              callback '请输入正确的日期1'
            else
              callback()   
      ]
      Change: (value) ->
        console.log value
      