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
    defaultOpenKeys: [ 'sub1' ]
    mode: 'inline'
    menus:
      'Navigation One':
        i: 'mail'
        k: 'sub1'
        'Item 1':
          lk: 'g1'
          'Option 1':
            k: '1'
          'Option 2':
            k: '2'
        'Item 2':
          lk: 'g2'
          'Option 3':
            k: '3'
          'Option 4':
            k: '4'
      'Navigation Two':
        i: 'appstore'
        k: 'sub2'
        'Option 5':
          k: '5'
        'Option 6':
          k: '6'
        'Submenu':
          k: 'sub3'
          'Option 7':
            k: '7'
          'Option 8':
            k: '8'
      'Navigation Three':
        i: 'setting'
        k: 'sub4'
        'Option 9':
          k: '9'
        'Option 10':
          k: '10'
        'Option 11':
          k: '11'
        'Option 12':
          k: '12'
