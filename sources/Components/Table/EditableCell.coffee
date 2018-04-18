import cfxify from 'cfx.dom'
import React, { Component } from 'react'
import nb from './style'
import {
  Input
  Icon
} from 'antd'

CFX = cfxify {
  'div'
  Input
  Icon
}

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

  # getState: => @state

  check: =>
    @setState
      editable: false
    if @props.onChange
    then @props.onChange @state.value
    else []

  edit: =>
    @setState {
      editable: true
    }

  render: ->

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
        className: 'editPen'
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
              onChange:
                if @props.handleChange?
                then @props.handleChange
                else {}
              onChange: @handleChange
              onPressEnter: @check
            c_Icon {
              key: 'Icon'
              type: 'check'
              className: 'Icon_editPen'
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
              className: 'Icon_Edit'
              key: 'Icon'
              type: 'edit'
              ( nb 'editable_cell_icon' )...
              onClick: @edit
            }
        ]
      ]
    else []

export default EditableCell