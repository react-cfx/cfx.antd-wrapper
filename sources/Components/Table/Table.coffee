import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
import EditableCell from './EditableCell'
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
    c_div
    c_Icon
    c_span
    c_Table
    c_Button
    c_EditableCell
    c_Popconfirm
    c_Divider
  } = CFX

  constructor: (props) ->
    super props
    @state =
      dataSource: props.dataSource
      count: 2

    # (
    #   Object.keys @props.header
    # ).reduce (r, c) =>
    #   {
    #     r...
    #     "#{c}": @props.header["#{c}"]
    #   }
    # , {}
    # forOf @props.header, (k, v) =>

    header = for k, v of @props.header
      title: "#{v}"
      dataIndex: "#{k}"

    childrenHeader1 = for k, v of @props.childrenHeader
      title: "#{v}"
      dataIndex: "#{k}"

    HeaderEdit = for k, v of @props.header
      title: "#{v}"
      dataIndex: "#{k}"
      render: (text, record) =>
        c_EditableCell
          value: text
          onChange: @onCellChange record.key, "#{k}"
          editPen: @props.editPen

    if header[0]?
    then header.shift()
    else []

    headerKey = for k, v of @props.header
      "#{k}"

    headerVal = for k, v of @props.header
      "#{v}"

    @FSheaderKey = headerKey[0]

    @columns = [
        HeaderEdit...
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

    @column = [
        title: headerVal[0]
        dataIndex: headerKey[0]
        render: (text, record, index) =>
          c_a
            href: '#'
          , record["#{@FSheaderKey}"]
        header...
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

    childrenHeader = [
      childrenHeader1...
    ]

    @NestedTable = (args...) ->

      dd { args }

      c_Table
        dataSource: args[0].Children
        columns: childrenHeader
        pagination: false

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
      name: '陈欢'
      age: '8'
      sex: '男'
      phone: '1300000000'
      email: '1300000000@qq.com'
      address: '武汉'

    @setState {
      dataSource: [ @state.dataSource..., newDtata ]
      count: @state.count++
    }

  rowSelection:
    onChange: (selectedRowKeys, selectedRows) =>
      console.log("selectedRowKeys: #{selectedRowKeys}", 'selectedRows: ', selectedRows)
    getCheckboxProps: (record) =>
      disabled: record.name == 'Disabled User'

  render: () ->

    c_div {}
    ,
      if @props.btn
      then [
        c_Button {
          key: 'Button'
          onClick: @handleAdd
          type: 'primary'
          ( nb 'components_table_demo_nested' )...
        }
        , @props.btn
      ]
      else []
      if @props.addChildren is true
      then [
        c_Table {
          key: 'Table'
          className: 'components-table-demo-nested'
          expandedRowRender: @NestedTable
          rowSelection: @rowSelection
          dataSource: @state.dataSource
          columns:
            if @props.editPen is true
            then @columns
            else @column
          # ( nb 'components_table_demo_nested' )...  
        }   
      ] 
      else [
        c_Table
          key: 'Table'
          rowSelection: @rowSelection
          dataSource: @state.dataSource
          columns:
            if @props.editPen is true
            then @columns
            else @column
      ]

export default EditableTable
