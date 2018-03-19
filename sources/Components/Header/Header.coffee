import { prefixDom } from 'cfx.dom'
import React,{ Component } from 'react'
import { Layout, Icon, Row, Col, Badge } from 'antd'
import nb from './style'
{ Header, Content, Footer } = Layout

CFX = prefixDom {
  'div'
  Layout
  Icon
  Row
  Col
  Badge
  Header
}

class Header extends React.Component

  constructor: (props) ->
    super props
    @state =
      backgroundBell: '#fff'
      backgroundUser: '#fff'
    @

  onHoverBell: () =>
    @setState {
      backgroundBell: '#e2f6ff'
    }

  onLeaveBell: () =>
    @setState {
      backgroundBell: '#fff'
    }
  onHoverUser: () =>
    @setState {
      backgroundUser: '#e2f6ff'
    }

  onLeaveUser: () =>
    @setState {
      backgroundUser: '#fff'
    }
  render: ->
    
    {
      c_div
      c_Layout
      c_Icon
      c_Row
      c_Col
      c_Badge
      c_Header
    } = CFX

    c_Row {
      ( nb 'Row' )...
      key: 'row1'
      type: 'flex'
      justify: 'end'
      align: 'middle'
    } 
    ,
      c_Col
        key: 'col1'
        span: 4
      ,  
        c_Header {
          style: 
            background: '#fff'
          ( nb 'Head' )...                  
          key: 'MainContentHeader'
        }


      c_Col
        key: 'col2'
        span: 2
      ,
        c_div {
          ( nb 'Action' )...
          key: 'bg1'
          style:
            background: @state.backgroundBell
        }   
        ,    
          c_Badge
            key: 'num'
            count: 99
          ,
            c_Icon {
              onMouseEnter: @onHoverBell
              onMouseLeave: @onLeaveBell
              key: 'message'
              type:"bell"
              ( nb 'HeaderIcon' )...
            }             
      c_Col
        key: 'col3'
        span: 2
      ,
        c_div {
          key: 'bg2'
          style:
            background: @state.backgroundUser
          ( nb 'Action' )...
        }
        ,
          c_Icon {
            ( nb 'HeaderIcon' )...
            onMouseEnter: @onHoverUser
            onMouseLeave: @onLeaveUser
            key: 'UserIcon'
            type: "user"
          }
            
            
export default Header