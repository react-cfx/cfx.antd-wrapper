import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Table } from '../../Components/Table'

CFX = prefixDom {
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
      # addChildren: true
      # operating: false
      # linkto: [
      #   'Steps'
      #   'Steps'
      # ]
      footlabel:
        c_a
          href: "#"
          style: color: '#959595'
        , '详细'
      btn: '添加房源'
      editPen: true
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
        name: '张三'
        age: '20'
        sex: '男'
        phone: '12345678900'
        email: '12345678900@qq.com'
        address: '武汉'
      dataSource: [
          key: '01'
          name: '张三'
          age: '8'
          sex: '男'
          phone: '1300000000'
          email: '1300000000@qq.com'
          address: '武汉'
          Children: [
              key: '101'
              name: '张三1'
              age: '20'
              sex: '男'
              phone: '12345678900'
              email: '12345678900@qq.com'
              address: '武汉'
            ,
              key: '102'
              name: '张三2'
              age: '20'
              sex: '男'
              phone: '12345678900'
              email: '12345678900@qq.com'
              address: '武汉'
          ]
        ,
          key: '02'
          name: '张三'
          age: '8'
          sex: '男'
          phone: '1300000000'
          email: '1300000000@qq.com'
          address: '武汉'
          Children: [
              key: '101'
              name: '张三2'
              age: '20'
              sex: '男'
              phone: '12345678900'
              email: '12345678900@qq.com'
              address: '武汉'
          ]
        ,
          key: '03'
          name: '张三'
          age: '18'
          sex: '男'
          phone: '1300000000'
          email: '1300000000@qq.com'
          address: '武汉'
          Children: [
              key: '101'
              name: '张三3'
              age: '20'
              sex: '男'
              phone: '12345678900'
              email: '12345678900@qq.com'
              address: '武汉'
          ]
      ]
