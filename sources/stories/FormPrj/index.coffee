import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import FormPrj from '../../Components/FormPrj/index'

CFX = prefixDom {
  FormPrj
}

export default =>

  storiesOf 'FormPrj', module

  .add 'FormPrj'

  , =>

    {
      c_FormPrj
    } = CFX

    [
      c_FormPrj
        key: 'FormPrj'
        Change: (
          (value) -> console.log { "#{key}":"#{value.target.value}"}
        ).bind @
        ChangeDate: (
          (date,dateString) -> console.log { "#{key}":"#{dateString}"}
        ).bind @
        ChangeAddress: (
          (value) -> console.log { "#{key}":"#{value}"}
        ).bind @
        ChangeSelect: (
          (value) -> console.log { "#{key}":"#{value}"}
        ).bind @
        Layout: 'vertical'
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
        
      c_FormPrj
        Change: (
          (value,key) -> console.log { "#{key}":"#{value.target.value}" }
        ).bind @
        ChangeDate: (
          (key,date,dateString) -> console.log { "#{key}":"#{dateString}"}
        ).bind @
        ChangeAddress: (
          (value,key) -> console.log { "#{key}":"#{value}"}
        ).bind @
        ChangeSelect: (
          (value) -> console.log { "#{key}":"#{value}"}
        ).bind @
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
