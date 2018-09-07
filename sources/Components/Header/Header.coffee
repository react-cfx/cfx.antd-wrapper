import React, { Component } from 'react'
import cfxify from 'cfx.react.dom'
import domWithLink from 'cfx.react.link.dom'
import nb from './style'
import {
  Icon
  Badge
  Layout
} from 'antd'
{ Header } = Layout

CFX = cfxify {
  'div'
  'small'
  'span'
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
      c_span
      c_small
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
          kind: @props.kind
          onClick: @props.onClick
          domObj: => 
            c_div {
              key: 'circle'
              ( nb 'Circle' )...
            }
            , 
              c_small {
                key: 'word'
                ( nb 'Word' )...
              }
              , @props.msg
        # c_i {
          # key: 'word'
          # ( nb 'Word' )...
        # }
        # , '李强'
      ##
      c_domWithLink
        Link: @props.SettingLink
        kind: @props.SettingKind
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

      c_domWithLink
        Link: @props.exitLink
        kind: @props.exitKind
        onClick: @props.exitClick
        domObj: =>
          c_span {
            key: 'a'
            ( nb 'exit' )...
          }
          , @props.exit
      #
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

