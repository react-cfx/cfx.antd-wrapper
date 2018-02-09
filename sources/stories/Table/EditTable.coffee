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

    { c_Table } = CFX

    c_Table
      btn: '添加房间'
      header:
        name: '姓名'
        age: '年龄'
        sex: '性别'
        phone: '手机号'
        email: '邮箱'
        address: '武汉'
      # title1: '出租方式'
      # title2: '房东'
      # title3: '押付方式'
      # title4: '出租金额'
      # title5: '出租状态'
      # title6: '地址'
      # editPen: true
      # dataSource: [
      #     key: '01'
      #     name: '刘章仁'
      #     rent: '套租'
      #     pay: '押一付三'
      #     money: '1000'
      #     status: '已租'
      #     address: '武汉市武昌区聚华豪庭'
      #   ,
      #     key: '02'
      #     name: '何文涛'
      #     rent: '间租'
      #     pay: '押一付三'
      #     money: '2000'
      #     status: '已租'
      #     address: '武汉市武昌区聚华豪庭'
      #   ,
      #     key: '03'
      #     name: '张三'
      #     rent: '套租'
      #     pay: '押一付三'
      #     money: '3000'
      #     status: '空置'
      #     address: '武汉市武昌区聚华豪庭'
      #   ,
      #     key: '04'
      #     name: '刘本义'
      #     rent: '套租'
      #     pay: '押一付三'
      #     money: '4000'
      #     status: '空置'
      #     address: '武汉市武昌区聚华豪庭'
      # ]

  # .add 'index'
  # , =>

  #   { c_Edit} = CFX

    # c_Table
    #   header:
    #     name: '姓名'
    #     age: '年龄'
    #     sex: '性别'
    #     phone: '手机号'
    #     email: '邮箱'
    #   dataSource: [
    #     key: '01'
    #     name: '刘章仁'
    #     age: 18
    #     sex: 'man'
    #     phone: '13012345678'
    #     email: '13012345678@163.com'
    #     subs: [
    #         key: '0101'
    #         name: '陈欢'
    #         age: 18
    #         sex: 'man'
    #         phone: '13087654321'
    #         email: '13087654321@163.com'
    #         subs: [
    #             key: '010101'
    #             name: '陈欢'
    #             age: 18
    #             sex: 'man'
    #             phone: '13087654321'
    #             email: '13087654321@163.com'
    #           ,
    #             key: '010102'
    #             name: '陈欢'
    #             age: 18
    #             sex: 'man'
    #             phone: '13087654321'
    #             email: '13087654321@163.com'
    #         ]
    #       ,
    #         name: '陈欢'
    #         age: 18
    #         sex: 'man'
    #         phone: '13087654321'
    #         email: '13087654321@163.com'
    #     ]
    #   ]


    # c_Edit
    #   header:
        
      # btn: '添加房间1'
      # title1: '出租方式'
      # title2: '房东'
      # title3: '押付方式'
      # title4: '出租金额'
      # title5: '出租状态'
      # title6: '地址'
      # dataSource: [
      #     key: '01'
      #     name: '刘章仁'
      #     rent: '套租'
      #     pay: '押一付三'
      #     money: '1000'
      #     status: '已租'
      #     address: '武汉市武昌区聚华豪庭'
      #     children: [
      #         key: '101'
      #         name: '房间1'
      #         rent: '套租'
      #         pay: '押一付三'
      #         money: '1000'
      #         status: '已租'
      #         address: '武汉市武昌区聚华豪庭'
      #       ,
      #         key: '102'
      #         name: '房间2'
      #         rent: '套租'
      #         pay: '押一付三'
      #         money: '1000'
      #         status: '已租'
      #         address: '武汉市武昌区聚华豪庭'                        
      #     ]
      #   ,
      #     key: '02'
      #     name: '何文涛'
      #     rent: '间租'
      #     pay: '押一付三'
      #     money: '2000'
      #     status: '已租'
      #     address: '武汉市武昌区聚华豪庭'
      #     children: []          
      #   ,
      #     key: '03'
      #     name: '张三'
      #     rent: '套租'
      #     pay: '押一付三'
      #     money: '3000'
      #     status: '空置'
      #     address: '武汉市武昌区聚华豪庭'
      #     children: []          
      #   ,
      #     key: '04'
      #     name: '刘本义'
      #     rent: '套租'
      #     pay: '押一付三'
      #     money: '4000'
      #     status: '空置'
      #     address: '武汉市武昌区聚华豪庭'
      #     children: []          
      # ]      
