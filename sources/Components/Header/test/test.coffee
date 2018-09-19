import { Component } from 'react'
import cfxify from 'cfx.react.dom'

import {
  Table
} from 'antd'

CFX = cfxify {
  Table
}

class table extends Component
  constructor: (props) -> 
    super props
  
  columns = [
      title: 'Name'
      dataIndex: 'name'
      key: 'name'
    ,
      title: 'Age'
      dataIndex: 'age'
      key: 'age'
    ,
      title: 'Address'
      dataIndex: 'address'
      key: 'address'
  ]

  data = [
      key: '1'
      name: 'John Brown'
      age: 32
      address: 'New York No. 1 Lake Park'
    ,
      key: '2'
      name: 'John Brown'
      age: 32
      address: 'New York No. 1 Lake Park'
    ,
      key: '3'
      name: 'John Brown'
      age: 32
      address: 'New York No. 1 Lake Park'
  ]
  