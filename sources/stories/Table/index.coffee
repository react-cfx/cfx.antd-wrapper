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
      tableLink: [
        1
        3
        4
      ]
      headlabel: (index, record, text) =>
        c_a
          key: "/#{index}"
          onClick: =>
            console.log 'record', record
          # href: "/#{index}"
        , text

      footlabel: (index, record) =>
        c_a
          key: "/#{index}"
          href: "/#{index}"
          style: color: '#959595'
        , '详细'
      btn: '添加房源'
      # editPen: true
      header:
        name: '姓名'
        age: '年龄'
        sex: '性别'
        phone: '手机号'
        email: '邮箱'
        address: '地址'
      childrenHeader:
        name: '姓名'
        age: '年龄1'
        sex: '性别1'
        phone: '手机号1'
        email: '邮箱1'
        address: '地址1'
      addsource:
        key: '1'
        name: '张三'
        age: '20'
        sex: '男'
        phone: '12345678900'
        email: '12345678900@qq.com'
        address: '武汉'
      dataSource: [
          name: '张三1'
          age: '20'
          sex: '男'
          phone: '12345678900'
          email: '12345678900@qq.com'
          address: '武汉'
        ,
          name: '张三2'
          age: '20'
          sex: '男'
          phone: '12345678900'
          email: '12345678900@qq.com'
          address: '武汉' 
        ,
          name: '张三3'
          age: '20'
          sex: '男'
          phone: '12345678900'
          email: '12345678900@qq.com'
          address: '武汉'                     
      ]
      addDs:(newData) =>
        console.log newData
