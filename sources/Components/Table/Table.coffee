import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
import { linkTo } from '@storybook/addon-links'
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

FormItem = Form.Item

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
  Form
  FormItem
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
    c_Form
    c_FormItem
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

    dataSourcekeys = for k, v of @props.dataSource
      "#{k}"

    dataSourceVals = for k, v of @props.dataSource
      "#{v}"

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
        unless props.operating is false
          title: '操作'
          dataIndex: 'operation'
          width: '105px'
          render: (text, record) =>
            c_Popconfirm
              title: 'Sure to delete??'
              onConfirm: () => @onDelete record.key
            ,
              c_a
                href: '#'
                # onClick: linkTo @props.linkto[0], @props.linkto[0]
                style:
                  color: '#959595'
              , '详细'
              c_Divider
                type: 'vertical'
            ,
              c_a
                href: '#'
                style:
                  color: '#F00'
              , '删除'
        else []      
    ]

    @column = [
        title: headerVal[0]
        dataIndex: headerKey[0]
        render: (text, record, index) =>
          c_a
            href: '#'
          , record["#{@FSheaderKey}"]
        header...
        unless props.operating is false
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
                href: '#'
                style:
                  color: '#F00'
              , '删除'
        else []      
    ]

    childrenHeader = [
      childrenHeader1...
    ]

    @NestedTable = (args...) ->

      dd { args }

      c_Table
        style:
          marginLeft: '67px'
        dataSource: args[0].Children
        columns: childrenHeader
        pagination: false

  onCellChange: (key,dataIndex) =>
    (value) =>
      dataSource = [ @state.dataSource... ]
      target = dataSource.find (item) => item.key is key
      if target
      then [
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
    newDtata = {
      @props.addsource...
      key: "#{@state.count++}"
    }

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
    c_div {
      ( nb 'components_table_demo_nested' )...
    }
    ,
      if @props.btn
      then [
        c_FormItem
          key: 'FormItem'
        ,
          c_Button
            style:
              float: 'right'
            key: 'Button'
            onClick: @handleAdd
            type: 'primary'
          , @props.btn
      ]
      else []
      if @props.addChildren is true
      then [
        c_Table {
          key: 'Table'
          expandedRowRender: @NestedTable
          rowSelection: @rowSelection
          dataSource: @state.dataSource
          columns:
            if @props.editPen is true
            then @columns
            else @column
          ( nb 'components_table_demo_nested' )...
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
