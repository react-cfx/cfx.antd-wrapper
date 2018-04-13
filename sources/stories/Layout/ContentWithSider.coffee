import cfxify from 'cfx.dom'
import Menu from '../../Components/Navigation/Menu'
import MainContent from '../../Components/Layout/MainContent'
import SiderContent from '../../Components/Layout/SiderContent'

CFX = cfxify {
  Menu
  MainContent
  SiderContent
}

export default ->

  {
    c_Menu
    c_MainContent
    c_SiderContent
  } = CFX

  c_MainContent
    # style:
    #   padding: '0 50px'
    breadcrumb: [
      # style:
      #   margin: '12px 0'
      'Home'
      'List'
      'App'
    ]
    content:

      c_SiderContent

        layout:
          style: 
            padding: '24px 0'
            background: '#fff'

        sider:
          width: 200
          style:
            background: '#fff'
          children:
            c_Menu
              mode: 'inline'
              defaultSelectedKeys: [ '1' ]
              defaultOpenKeys: [ 'sub1' ]
              style:
                height: '100%'
              menus:
                'subnav 1':
                  i: 'user'
                  k: 'sub1'
                  'option1':
                    k: '1'
                  'option2':
                    k: '2'
                  'option3':
                    k: '3'
                  'option4':
                    k: '4'
                'subnav 2':
                  i: 'laptop'
                  k: 'sub2'
                  'option5':
                    k: '5'
                  'option6':
                    k: '6'
                  'option7':
                    k: '7'
                  'option8':
                    k: '8'
                'subnav 3':
                  i: 'notification'
                  k: 'sub3'
                  'option9':
                    k: '9'
                  'option10':
                    k: '10'
                  'option11':
                    k: '11'
                  'option12':
                    k: '12'

        content:
          style:
            padding: '0 24px'
            minHeight: 280
          children: 'Content'

    footer: 'Ant Design ©2016 Created by Ant UED'
    # style: 
    #   textAlign: 'center'
