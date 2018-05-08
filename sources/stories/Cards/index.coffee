import { storiesOf } from '@storybook/react'
import prefixDom from 'cfx.react.dom'
import Cards from '../../Components/Cards'
import List from '../../Components/Cards/List'
import { Card } from 'antd'

CFX = prefixDom {
  Card
  Cards
  List
}

export default =>

  storiesOf 'Cards', module

  .add 'Cards'

  , =>

    {
      c_Card
      c_Cards
      c_List
    } = CFX

    c_Card
      bordered: false
    ,  
      c_Cards
        title: '个人信息'
        btn: '这是按钮'
        linkto: [
          'Table'
        ]
        CardContent: [
          c_List
            key: 'List'  
            data: [
                keys: 'name：'
                values: 'xx'
              ,
                key: 'age'
                values: '20'            
            ]
        ]
