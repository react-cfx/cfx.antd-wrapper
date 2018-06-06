import React, { Component } from 'react'
import prefixDom from 'cfx.react.dom'
import nb from './style'
import {
  Icon
  Badge
  Layout
} from 'antd'
{ Header } = Layout

CFX = prefixDom {
  'div'
  'i'
  Icon
  Badge
  Header
}

class Header extends Component
  constructor: (props) ->
    super props
    @state =
      backgroundBell: '#fff'
      backgroundUser: '#fff'
    @
  
  render: ->

    {
      c_div
      c_i
      c_Icon
      c_Badge
      c_Header
    } = CFX

    c_div {
      key: 'container'
      ( nb 'Container' )...
    }
    ,
      c_div {
        key: 'CircleContainer'
        ( nb 'CircleContainer' )...
        onClick: @props.onClick
      }
      ,
        c_div {
          key: 'circle'
          ( nb 'Circle' )...
        }
        c_i {
          key: 'word'
          ( nb 'Word' )...
        }
        , 'Admin'
      ## 
      c_div {
        key: 'SettingContainer'
        ( nb 'SettingContainer' )...
      }     
      ,
        c_Icon {
          type: 'setting'
          ( nb 'Setting' )...
        }

      ##
      # c_div {
      #   key: 'bell'
      #   ( nb 'BellContainer' )...
      # }   
      # ,
      #   c_Badge
      #     key: 'num'
      #     count: 99
      #   ,
      #     c_Icon {
      #       type:"bell"
      #       ( nb 'Bell' )...
      #     }
            
export default Header

