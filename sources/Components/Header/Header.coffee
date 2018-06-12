import React, { Component } from 'react'
import cfxify from 'cfx.react.dom'
import { domWithLink } from 'cfx.react.link.dom'
import nb from './style'
import {
  Icon
  Badge
  Layout
} from 'antd'
{ Header } = Layout

CFX = cfxify {
  'div'
  'i'
  Icon
  Badge
  Header
  domWithLink
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
      c_domWithLink
    } = CFX

    c_div {
      key: 'container'
      ( nb 'Container' )...
    }
    ,
      c_div {
        key: 'CircleContainer'
        ( nb 'CircleContainer' )...
        
      }
      ,
        c_domWithLink
          Link: @props.Link
          domObj: => 
            c_div {
              key: 'circle'
              onClick: @props.onClick
              ( nb 'Circle' )...
            }
        c_i {
          key: 'word'
          ( nb 'Word' )...
        }
        , 'Admin'
      ## 
      c_domWithLink
        Link: @props.SettingLink
        onClick: @props.settingClick
        domObj: =>
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

