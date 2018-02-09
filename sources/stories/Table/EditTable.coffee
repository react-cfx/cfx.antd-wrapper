import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Table } from '../../Components/Table/Table'

CFX = prefixDom {
  Table
}

export default =>

  storiesOf 'Table', module

  .add 'Table'
  , =>

    {
      c_Table
    } = CFX

    c_Table
      btn: '添加房源'
      header:
        name: '姓名'
        age: '年龄'
        sex: '性别'
        phone: '手机号'
        email: '邮箱'
        address: '地址'
      dataSource: [
          key: '01'
          name: '陈欢'
          age: '8'
          sex: '男'
          phone: '1300000000'
          email: '1300000000@qq.com'
          address: '武汉'
          children: [
              key: '101'
              name: '陈欢'
              age: '8'
              sex: '男'
              phone: '1300000000'
              email: '1300000000@qq.com'
              address: '武汉'
          ]
        ,
          key: '02'
          name: '陈欢'
          age: '8'
          sex: '男'
          phone: '1300000000'
          email: '1300000000@qq.com'
          address: '武汉'
          children: [
              key: '201'
              name: '陈欢'
              age: '8'
              sex: '男'
              phone: '1300000000'
              email: '1300000000@qq.com'
              address: '武汉'
          ]
      ]


  # .add 'Table'
  # , =>

  #   {
  #     c_Table
  #   } = CFX
