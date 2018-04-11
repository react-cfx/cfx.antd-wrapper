import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
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

    [
      c_FormPrj
        key: 'FormPrj'
        Change: (
          (value,key) -> console.log { "#{key}":"#{value.target.value}"}
        ).bind @
        ChangeDate: (
          (date,dateString,key) -> console.log { "#{key}":"#{dateString}"}
        ).bind @
        ChangeAddress: (
          (value,key) -> console.log { "#{key}":"#{value}"}
        ).bind @
        ChangeSelect: (
          (value,key) -> console.log { "#{key}":"#{value}"}
        ).bind @
        options: [
            value: '湖北'
            label: '湖北'
            children: [
              value: '武汉'
              label: '武汉'
              children: [
                value: '武昌'
                label: '武昌'
              ]
            ]
          ,
            value: '四川'
            label: '四川'
            children: [
              value: '成都'
              label: '成都'
              children: [
                value: '高新区'
                label: '高新区'
              ]
            ]
        ]
        selectAfter:
          c_Select
            defaultValue: '月'
            onChange: (value) => console.log value 
            style:
              width: '80px'
          ,
            c_Option
              value: '日'
            , '日'
            c_Option
              value: '年'
            , '年'
        Layout: 'vertical'
        title: [
            keys: 'normal'
            type: 'normal'
            key: 'normal'
          ,
            keys: 'date'
            type: 'date'
            key: 'date'
          ,
            keys: 'address'
            type: 'address'
          ,
            keys: 'select'
            type: 'select'
          ,
            keys: 'inputSelect'
            type: 'inputSelect'
          ,
            keys: 'number'
            type: 'number'
        ]
        
      c_FormPrj
        Change: (
          (value,key) -> console.log { "#{key}":"#{value.target.value}" }
        ).bind @
        ChangeDate: (
          (date,dateString,key) -> console.log { "#{key}":"#{dateString}"}
        ).bind @
        ChangeAddress: (
          (value,key) -> console.log { "#{key}":"#{value}"}
        ).bind @
        ChangeSelect: (
          (value,key) -> console.log { "#{key}":"#{value}"}
        ).bind @
        options: [
            value: '湖北'
            label: '湖北'
            children: [
              value: '武汉'
              label: '武汉'
              children: [
                value: '武昌'
                label: '武昌'
              ]
            ]
          ,
            value: '四川'
            label: '四川'
            children: [
              value: '成都'
              label: '成都'
              children: [
                value: '高新区'
                label: '高新区'
              ]
            ]
        ]
        selectAfter:
          c_Select
            defaultValue: '月'
            onChange: (value) => console.log value 
            style:
              width: '80px'
          ,
            c_Option
              value: '日'
            , '日'
            c_Option
              value: '年'
            , '年'
        btnright: '下一步'
        key: 'FormPrj1'
        title: [
            keys: 'normal'
            type: 'normal'
            key: 'normal'
          ,
            keys: 'date'
            type: 'date'
          ,
            keys: 'address'
            type: 'address'
          ,
            keys: 'select'
            type: 'select'
          ,
            keys: 'inputSelect'
            type: 'inputSelect'
          ,
            keys: 'number'
            type: 'number'
        ]
    ]
