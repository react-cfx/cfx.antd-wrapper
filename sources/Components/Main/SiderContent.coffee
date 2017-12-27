import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Menu, Icon } from 'antd'
SubMenu = Menu.SubMenu
MenuItem = Menu.Item
MenuItemGroup = Menu.ItemGroup

CFX = prefixDom {
  default: {
    'span'
  }
  Menu
  Icon
  SubMenu
  MenuItem
  MenuItemGroup
}

class SiderContent extends React.Component

  handleClick: (e) =>
    console.log 'click ', e

  render: ->
    {
      c_span
      c_Icon
      c_Menu
      c_SubMenu
      c_MenuItem
      c_MenuItemGroup
    } = CFX

    c_Menu
      onClick: @handleClick
      # style:
      #   width: 240
      defaultSelectedKeys: [ '1' ]
      defaultOpenKeys: [ 'sub1' ]
      mode: 'inline'
    ,
      c_SubMenu
        key: 'sub1'
        title: 
          c_span {}
          ,
            c_Icon
              type: 'mail'
            c_span {}
            , 'Navigation One'
      ,
        c_MenuItemGroup
          key: 'g1'
          title: 'Item 1'
        ,
          c_MenuItem
            key: '1'
          , 'Option 1'
          c_MenuItem
            key: '2'
          , 'Option 2'

        c_MenuItemGroup
          key: 'g2'
          title: 'Item 2'
        ,
          c_MenuItem
            key: '3'
          , 'Option 3'
          c_MenuItem
            key: '4'
          , 'Option 4'

      c_SubMenu
        key: 'sub2'
        title:
          c_span {}
          ,
            c_Icon
              type: 'appstore'
            c_span {}
            , 'Navigation Two'
      ,
        c_MenuItem
          key: '5'
        , 'Option 5'
        c_MenuItem
          key: '6'
        , 'Option 6'
        c_SubMenu
          key: 'sub3'
          title: 'Submenu'
        ,
          c_MenuItem
            key: '7'
          , 'Option 7'
          c_MenuItem
            key: '8'
          , 'Option 8'

      c_SubMenu
        key: 'sub4'
        title:
          c_span {}
          , 
            c_Icon
              type: 'setting'
            c_span {}
            , 'Navigation Three'
      ,
        c_MenuItem
          key: '9'
        , 'Option 9'
        c_MenuItem
          key: '10'
        , 'Option 10'
        c_MenuItem
          key: '11'
        , 'Option 11'
        c_MenuItem
          key: '12'
        , 'Option 12'

export default SiderContent
