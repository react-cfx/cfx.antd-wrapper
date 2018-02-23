import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Cards from '../../Components/Cards'
import { Card } from 'antd'

CFX = prefixDom {
  Card
  Cards
}

export default =>

  storiesOf 'Cards', module

  .add 'Cards'

  , =>

    {
      c_Card
      c_Cards
    } = CFX

    c_Card
      bordered: false
    ,  
      c_Cards
        title: '个人信息'
        data: [
            keys: 'name：'
            values: 'xx'
          ,
            keys: 'age：'
            values: '20'            
        ]

