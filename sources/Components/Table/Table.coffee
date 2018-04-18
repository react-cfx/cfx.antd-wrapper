import { ddbs as dd } from 'ddeyes'
import cfxify from 'cfx.dom'
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

CFX = cfxify {
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

    @FSheaderVal = headerVal[0]

    @column = [
        (
          if @props.editPen is true
          then [
            HeaderEdit...
            unless @props.operating is false
              title: '操作'
              dataIndex: 'operation'
              width: '105px'
              render: (index, record) =>
                [
                    if @props.footlabel?
                    then [
                      @props.footlabel index, record
                    ]
                    else []
                    unless @props.Divider is false
                    then [
                      c_Divider
                        key: 'Divider'
                        type: 'vertical'
                    ]
                    else []
                  ,
                    c_Popconfirm
                      key: 'Popconfirm'
                      title: 'Sure to delete??'
                      onConfirm: () =>
                        if @props.onDelete?
                        then @props.onDelete record
                        else @onDelete record.key
                    ,
                      c_a
                        key: 'a'
                        href: '#'
                        style:
                          color: '#F00'
                      , '删除'
                ]
            else []
          ]
          else [
            title: headerVal[0]
            dataIndex: headerKey[0]
            render: (text, record, index) =>
              if @props.headlabel?
              then [
                @props.headlabel index, record, text
              ]
              else [
                record["#{@FSheaderKey}"]
              ]

              ###
              aTag = @props.aTag text, record, index # aTag = (text, record, index) => aTag<Component>
              ###

            header...
            unless @props.operating is false
              title: '操作'
              dataIndex: 'operation'
              width: '105px'
              render: (index, record) =>
                [
                    if @props.footlabel?
                    then [
                      @props.footlabel index, record
                    ]
                    else []
                    c_Divider
                      key: 'Divider'
                      type: 'vertical'
                  ,
                    c_Popconfirm
                      key: 'Popconfirm'
                      title: 'Sure to delete??'
                      onConfirm: () =>
                        if @props.onDelete?
                        then @props.onDelete record
                        else @onDelete record.key
                    ,
                      c_a
                        key: 'a'
                        href: '#'
                        style:
                          color: '#F00'
                      , '删除'
                ]
            else []
          ]
        )...
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

  componentWillReceiveProps: (nextProps) ->
    if nextProps.dataSource?
      @setState
        dataSource: nextProps.dataSource
    @

  onCellChange: (key, dataIndex) =>
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
      c_Table {
        (
          if @props.addChildren is true
          then expandedRowRender: @NestedTable
          else []
        )...
        (
          if @props.onChange
          then onChange: @props.onChange @state.dataSource
          else {}
        )...
        rowSelection: @rowSelection
        dataSource: @state.dataSource
        columns: @column
          # if @props.editPen is true
          # then @columns
          # else
        ( nb 'components_table_demo_nested' )...
      }

export default EditableTable
