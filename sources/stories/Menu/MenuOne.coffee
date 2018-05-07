import React from 'react'
import prefixDom from 'cfx.react.dom'

import Menu from '../../Components/Navigation/Menu'

CFX = prefixDom {
  Menu
}

export default =>

  {
    c_Menu
  } = CFX

  c_Menu
    defaultSelectedKeys: [ '1' ]
    theme: 'dark'
    mode: 'inline'
    menus:
      'Option 1':
        k: '1'
        i: 'pie-chart'
      'Option 2':
        k: '2'
        i: 'desktop'
      'User':
        k: 'sub1'
        i: 'user'
        'Tom':
          k: '3'
        'Bill':
          k: '4'
        'Alex':
          k: '5'
      'Team':
        k: 'sub2'
        i: 'team'
        'Team 1':
          k: '6'
        'Team 2':
          k: '8'
      'File':
        k: '9'
        i: 'file'
