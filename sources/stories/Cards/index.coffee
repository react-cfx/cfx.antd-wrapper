import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import Cards from '../../Components/Cards'
import List from '../../Components/Cards/List'
import { Card } from 'antd'

CFX = cfxify {
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
        CardContent:
          c_List
            key: 'List'  
            data: [
                keys: 'name：'
                values: 'xx'
              ,
                key: 'age'
                values: '20' 
              ,
                keys: 'name：'
                values: 'xx'
              ,
                key: 'age'
                values: '20'   
              ,
                keys: 'name：'
                values: 'xx'
              ,
                key: 'age'
                values: '20'              
            ]
