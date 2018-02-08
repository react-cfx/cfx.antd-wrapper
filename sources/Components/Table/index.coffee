import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
import nb from './style'
import {
  Table
  Form
  Input
  Icon
  Button
  Popconfirm
  Divider
} from 'antd'

class EditableCell extends Component

  constructor: (props) ->
    super props
    @state =
      value: @props.value
      editable: false

  handleChange: (e) =>
    value = e.target.value
    @setState {
      value
    }

  check: () =>
    @setState {
      editable: false
    }
    if @props.onChange
    then @props.onChange @state.value
    else []

  edit: () =>
    @setState {
      editable: true
    }

  render: (props) ->

    {
      value
      editable
    } = @state

    {
      c_div
      c_Input
      c_Icon
    } = CFX

    if @props.editPen is true
    then [
      c_div {
        key: 'cell'
        ( nb 'editable_cell' )...
      }
      ,
        if editable
        then [
          c_div {
            key: 'div'
            ( nb 'editable_cell_input_wrapper' )...
          }
          ,
            c_Input
              key: 'Input'
              value: @state.value
              onChange: @handleChange
              onPressEnter: @check
            c_Icon {
              key: 'Icon'
              type: 'check'
              ( nb 'editable_cell_icon_check' )...
              onClick: @check
            }
        ]
        else [
          c_div {
            key: 'div'
            ( nb 'editable_cell_text_wrapper' )...
          }
          ,
            @state.value or ' '
            c_Icon {
              key: 'Icon'
              type: 'edit'
              ( nb 'editable_cell_icon' )...
              onClick: @edit
            }
        ]
      ]
    else []

CFX = prefixDom {
  'a'
  'div'
  'span'
  EditableCell
  Popconfirm
  Button
  Input
  Table
  Icon
  Divider
}

class EditableTable extends Component

  {
    c_a
    c_span
    c_EditableCell
    c_Popconfirm
    c_Divider
  } = CFX

  constructor: (props) ->
    super props
    @state =
      dataSource: props.dataSource
      count: 2
    @

    @columns = [
        title: @props.title1
        dataIndex: 'rent'
        render: (text, record) =>
          c_EditableCell
            value: text
            onChange: @onCellChange record.key, 'rent'
            editPen: @props.editPen
      ,
        title: @props.title2
        dataIndex: 'name'
        render: (text, record) =>
          c_EditableCell
            value: text
            onChange: @onCellChange record.key, 'rent'
            editPen: @props.editPen
      ,
        title: @props.title3
        dataIndex: 'pay'
        render: (text, record) =>
          c_EditableCell
            value: text
            onChange: @onCellChange record.key, 'rent'
            editPen: @props.editPen
      ,
        title: @props.title4
        dataIndex: 'money'
        render: (text, record) =>
          c_EditableCell
            value: text
            onChange: @onCellChange record.key, 'rent'
            editPen: @props.editPen
      ,
        title: @props.title5
        dataIndex: 'status'
        render: (text, record) =>
          c_EditableCell
            value: text
            onChange: @onCellChange record.key, 'rent'
            editPen: @props.editPen
      ,
        title: @props.title6
        dataIndex: 'address'
        render: (text, record) =>
          c_EditableCell
            value: text
            onChange: @onCellChange record.key, 'rent'
            editPen: @props.editPen
      ,
        title: '操作'
        dataIndex: 'operation'
        render: (text, record) =>
          c_Popconfirm
            key: 'Popconfirm'
            title: 'Sure to delete??'
            onConfirm: () => @onDelete record.key
          ,
            c_a
              key: 'a'
              href: '#'
              style:
                color: '#F00'
            , '删除'
    ]

    @column = [
        title: '出租方式'
        dataIndex: 'rent'
        width: '15%'
      ,
        title: '房东'
        dataIndex: 'name'
        render: (text, record) =>
          c_a
            href: '#'
          , record.name
      ,
        title: '押付方式'
        dataIndex: 'pay'
      ,
        title: '出租金额'
        dataIndex: 'money'
      ,
        title: '出租状态'
        dataIndex: 'status'
      ,
        title: '地址'
        dataIndex: 'address'
      ,
        title: '操作'
        dataIndex: 'operation'
        width: '105px'
        render: (text, record) =>
          c_Popconfirm
            key: 'Popconfirm'
            title: 'Sure to delete??'
            onConfirm: () => @onDelete record.key
          ,
            c_a
              href: '#'
              style:
                color: '#959595'
            , '详细'
            c_Divider
              type: 'vertical'
          ,
            c_a
              key: 'a'
              href: '#'
              style:
                color: '#F00'
            , '删除'
    ]

  onCellChange: (key,dataIndex) =>
    (value) =>
      dataSource = [ @state.dataSource... ]
      target = dataSource.find (item) => item.key is key
      if target
      then [
        key: 'value'
        target[dataIndex] = value
        @setState {
          dataSource
        }
      ]
      else []

  onDelete: (key) =>
    dataSource = [ @state.dataSource... ]
    @setState {
      dataSource: dataSource.filter (item) => item.key isnt key
    }

  handleAdd: () =>
    newDtata =
      key: "#{@state.count++}"
      name: '何文涛'
      rent: '间租'
      pay: '押一付三'
      money: '2000'
      status: '已租'
      address: '武汉市武昌区聚华豪庭'

    @setState {
      dataSource: [ @state.dataSource..., newDtata ]
      count: @state.count++
    }

  rowSelection:
    onChange: (selectedRowKeys, selectedRows) =>
      console.log("selectedRowKeys: #{selectedRowKeys}", 'selectedRows: ', selectedRows)
    getCheckboxProps: (record) =>
      disabled: record.name == 'Disabled User'

  render: (props) ->

    {
      c_div
      c_Icon
      c_Table
      c_Button
      c_EditableCell
    } = CFX

    c_div {}
    ,
      if @props.btn
      then [
        c_Button {
          key: 'Button'
          onClick: @handleAdd
          type: 'primary'
          ( nb 'editable_add_btn' )...
        }
        , @props.btn
      ]
      else []
      c_Table
        rowSelection: @rowSelection
        dataSource: @state.dataSource
        columns:
          if @props.editPen is true
          then @columns
          else @column

export default EditableTable
