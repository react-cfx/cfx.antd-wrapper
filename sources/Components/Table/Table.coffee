import { ddbs as dd } from 'ddeyes'
import cfxify from 'cfx.react.dom'
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
      count: 0
    if @props.dataSource?
    then [
      dataSourcekeys = @props.dataSource.reduce (r, c, i) =>
        [
          r...
          "#{i}"
        ]
      , []
      dataSourceVals = @props.dataSource.reduce (r, c, i) =>
        [
          r...
          "#{c}"
        ]
      , []
    ]
    else []
    header = (
      Object.keys @props.header
    )
    .reduce (r, c, i) =>
      [
        r...
        title: @props.header[c]
        dataIndex: "#{c}"
      ]
    , []
    if @props.childrenHeader?
    then [
      childrenHeader1 = (
        Object.keys @props.childrenHeader
      )
      .reduce (r, c, i) =>
        [
          r...
          title: @props.childrenHeader[c]
          dataIndex: "#{c}"
        ]
      , [] 
    ]
    else [
      childrenHeader1 = []
    ]


    HeaderEdit = (
      Object.keys @props.header
    )
    .reduce (r, c) =>
      [
        r...
        title: @props.header[c]
        dataIndex: c
        render: (text, record) =>
          c_EditableCell
            value: text
            onChange: @onCellChange record.key, c
            editPen: @props.editPen
      ]
    , []

    if header[0]?
    then header.shift()
    else []
    headerKey = (
      Object.keys @props.header
    )
    .reduce (r, c, i) =>
      [
        r...
        "#{c}"
      ]
    , []
    headerVal = (
      Object.keys @props.header
    )
    .reduce (r, c, i) =>
      [
        r...
        @props.header[c]
      ]
    , []

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
      count = nextProps.dataSource.length
      dd count
      @setState
        dataSource: nextProps.dataSource
        count: nextProps.dataSource.length
    @

  onCellChange: (key, dataIndex) =>
    (value) =>
      dataSource = [ @state.dataSource... ]
      target = dataSource.find (item) => item.key is key
      if target
      then (
        target[dataIndex] = value  
        @setState {
          dataSource
        }
        @props.getDS @state.dataSource if @props.getDS?
        @props.getDsOne target if @props.getDsOne
      )
      else []

  onDelete: (key) =>
    dataSource = [ @state.dataSource... ]
    @setState {
      dataSource: dataSource.filter (item) => item.key isnt key
    }

  handleAdd: () =>
    newData = {
      @props.addsource...
      key: "#{@state.count++}"
    }

    @setState {
      dataSource: [ @state.dataSource..., newData ]
      count: @state.count++
    }
  addDs: () =>
    newData =
      if @props.addsource.key?
      then {
        @props.addsource...
        key: @props.addsource.key
      }
      else {
        @props.addsource...
        key: "#{@state.count++}"
      }

    @props.addDs newData

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
            onClick:
              if @props.addDs?
              then @addDs
              else @handleAdd
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
          if @props.rowSelection is true
          then []
          else rowSelection: @rowSelection
        )...
        # rowSelection: @rowSelection
        dataSource: @state.dataSource
        columns: @column
        ( nb 'components_table_demo_nested' )...
      }

export default EditableTable
