import React from 'react'
import cfxify from 'cfx.dom'
import Menu from '../../Components/Navigation/Menu'
import getLinks from '../../Components/UtilLink/ComLinkBtn'
import Links from '../../Components/UtilLink/Links'
CFX = cfxify {
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
        'Tom':
          k: '6'
      'Option 2':
        k: '2'
        i: 'desktop'
      'User':
        k: 'sub1'
        i: 'user'
        link: getLinks {
          Link: Links
          kind: 'Test'
        }
        'Tom':
          k: '3'
          link: getLinks {
            Link: Links
            kind: 'Test'
          }
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
