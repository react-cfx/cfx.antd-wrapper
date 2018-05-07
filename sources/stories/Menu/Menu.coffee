import React from 'react'
import cfxify from 'cfx.dom'
import {
  Menu
  Icon
} from 'antd'
MenuItem = Menu.Item

CFX = cfxify {
  Menu
  MenuItem
  Icon
  'a'
  'span'
}

export default ->
  
  {
    c_Menu
    c_MenuItem
    c_Icon
    c_a
    c_span
  } = CFX

  c_Menu
    theme: 'dark'
    defaultSelectedKeys: ['1']
    mode: 'inline'
  ,
    c_MenuItem
      kye:'1'
    ,
      c_span {}
      ,
        c_Icon
          type: 'pie-chart'
        c_a {}
        , 'Option 1'
    
    # c_MenuItem
    #   kye:'2'
    # ,
    #   c_Icon
    #     type: 'pie-chart'
    #   c_span {}
    #   , 'Option 2'
    
    # c_MenuItem
    #   kye:'3'
    # ,
    #   c_Icon
    #     type: 'pie-chart'
    #   c_span {}
    #   , 'Option 3'