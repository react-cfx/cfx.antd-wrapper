import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Menu, Icon } from 'antd'

MenuItem = Menu.Item
SubMenu = Menu.SubMenu

CFX = prefixDom {
  default: {
    'div'
    'span'
  }
  Menu
  MenuItem
  SubMenu
  Icon
}

class SiderBar extends React.Component

  render: ->

    {
      c_div
      c_span
      c_Menu
      c_MenuItem
      c_SubMenu
      c_Icon
    } = CFX

    [
      c_div
        key: 'SiderLogo'
        className: 'logo'

      c_Menu
        key: 'SiderMenu'
        theme: 'dark'
        defaultSelectedKeys: [ '1' ]
        mode: 'inline'
      ,

        c_MenuItem
          key: '1'
        ,
          c_Icon
            type: 'pie-chart'
          c_span {}
          , 'Option 1'

        c_MenuItem
          key: '2'
        ,
          c_Icon
            type: 'desktop'
          c_span {}
          , 'Option 2'

        c_SubMenu
          key: 'sub1'
          title:
            c_span {}
            ,
              c_Icon type: 'user'
              c_span {}, 'User'
        ,
          c_MenuItem
            key: '3'
          , 'Tom'
          c_MenuItem
            key: '4'
          , 'Bill'
          c_MenuItem
            key: '5'
          , 'Alex'

        c_SubMenu
          key: 'sub2'
          title:
            c_span {}
            ,
              c_Icon type: 'team'
              c_span {}, 'Team'
        ,
          c_MenuItem key: '6'
          , 'Team 1'
          c_MenuItem key: '8'
          , 'Team 2'

        c_MenuItem key: '9'
        ,
          c_Icon type: 'file'
          c_span {}, 'File'
    ]

export default SiderBar