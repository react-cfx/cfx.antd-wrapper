import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import { Table } from '../../Components/Table'

CFX = cfxify {
  'a'
  Table
}

export default =>

  storiesOf 'Table', module

  .add 'Table'
  , =>

    {
      c_a
      c_Table
    } = CFX

    c_Table
      onChange: (selectedRowKeys, selectedRows) =>
        console.log selectedRowKeys, selectedRows, '312312312312312'
      # editPen: true
      rowSelection: true
      getDsOne: (target) =>
        console.log target, 'target'
      addChildren: true
      columnsLink: [
        1
        2
      ]
      headlabel: (index, record, text) =>
        c_a
          key: "/#{index}"
          onClick: =>
            console.log 'record', record
          # href: "/#{index}"
        , text
      Divider: false
      # footlabel: (index, record) =>
      #   c_a
      #     key: "/#{index}"
      #     href: "/#{index}"
      #     style: color: '#959595'
      #   , '详细'
      btn: '添加房源'
      # editPen: true
      header:
        name: '姓名1'
        age: '年龄1'
        sex: '性别1'
        phone: '手机号1'
        email: '邮箱1'
        address: '地址1'
      childrenHeader:
        name: '姓名'
        age: '年龄1'
        sex: '性别1'
        phone: '手机号1'
        email: '邮箱1'
        address: '地址1'
      addsource:
        name: '张三'
        age: '1'
        sex: '男'
        phone: '12345678900'
        email: '12345678900@qq.com'
        address: '武汉'
      dataSource: [
          key: '1'
          name: '张三1'
          age: '0'
          sex: '男'
          phone: '12345678900'
          email: '12345678900@qq.com'
          address: '武汉'
          Children: [
            name: '1'
          ]
        ,
          key: '2'
          name: '张三2'
          age: '1'
          sex: '男'
          phone: '12345678900'
          email: '12345678900@qq.com'
          address: '武汉'
          Children: [
            name: '2'
          ]          
        ,
          key: '3'
          name: '张三3'
          age: '2'
          sex: '男'
          phone: '12345678900'
          email: '12345678900@qq.com'
          address: '武汉'
          Children: [
            name: '3'
          ]                           
      ]
      addDs:(newData) =>
        console.log newData
