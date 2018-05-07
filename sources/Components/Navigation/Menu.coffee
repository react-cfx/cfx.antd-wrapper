# import { ddbs as dd } from 'ddeyes'
import React from 'react'
import prefixDom from 'cfx.react.dom'

import { Menu, Icon } from 'antd'
SubMenu = Menu.SubMenu
MenuItem = Menu.Item
MenuItemGroup = Menu.ItemGroup

import {
  mapProps
  compose
} from 'recompose'

CFX = prefixDom {
  'span'
  Icon
  Menu
  SubMenu
  MenuItemGroup
  MenuItem
}

hocMapProps = mapProps (ownerProps) =>
  {
    menu...
    menus
  } = ownerProps
  {
    menu
    menus
  }

enhance = compose hocMapProps

_Menu = enhance (props) =>

  {
    c_span
    c_Icon
    c_Menu
    c_SubMenu
    c_MenuItemGroup
    c_MenuItem
  } = CFX

  isObjectEmpty = (Obj) => 
    typeof Obj is 'object' and
    (Object.keys Obj).length is 0

  Dom =
    MenuItem: ({
      k
      i
      c
    }) =>
      # dd "Create MenuItem Dom #{k}."
      c_MenuItem.apply null
      , [
        key: k
        (
          if i?
          then [
            c_Icon type: i
            c_span {}, c
          ]
          else [ c ]
        )...
      ]
    MenuItemGroup: (
      {
        lk
        c
        others
      }
      recMenu
    ) =>
      # dd "Create MenuItemGroup Dom #{lk}."
      c_MenuItemGroup.apply null
      ,
        recMenu others, [
          key: lk
          title: c
        ]
    SubMenu: (
      {
        k
        c
        i
        others
      }
      recMenu
    ) =>
      # dd "Create SubMenu Dom #{k}."
      c_SubMenu.apply null
      ,
        recMenu others, [
          key: k
          title:
            if i?
            then (
              c_span {}
              ,
                c_Icon
                  type: i
                c_span {}
                , c
            )
            else (
              c_span {}
              , c
            )
        ]

  recMenu = (menus, initMenus = []) =>
    (Object.keys menus)
    .reduce (r, c) =>
      {
        i           # Icon
        k           # Key
        lk          # Lable Key
        ops         # Options
        others...
      } = menus["#{c}"]
      [
        r...
        (
          if isObjectEmpty others
          then [
            Dom.MenuItem {
              k
              i
              c
            }
          ]
          else (
            if lk?
            then [
              Dom.MenuItemGroup {
                lk
                c
                others
              }, recMenu
            ]
            else [
              Dom.SubMenu {
                k
                c
                i
                others
              }, recMenu 
            ]
          )
        )...
      ]
    , initMenus

  c_Menu.apply null
  ,
    recMenu props.menus
    , [
      props.menu
    ]

export default _Menu
