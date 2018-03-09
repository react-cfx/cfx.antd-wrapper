import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import FormPrj from '../../Components/FormPrj'

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
        Layout: 'vertical'
        title: [
            keys: 'normal'
            type: 'normal'
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
        key: 'FormPrj1'
        title: [
            keys: 'normal'
            type: 'normal'
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