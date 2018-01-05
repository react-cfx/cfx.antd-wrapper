import { prefixDom } from 'cfx.dom'
import { Layout, Menu, Breadcrumb, Icon } from 'antd'
{ SubMenu } = Menu
MenuItem = Menu.Item
BreadcrumbItem = Breadcrumb.Item
{ Content, Footer, Sider } = Layout

CFX = prefixDom {
  default: {
    'span'
  }
  Icon
  Layout
  Content
  Footer
  Sider
  Menu
  SubMenu
  MenuItem
  Breadcrumb
  BreadcrumbItem
}

export default ->

  {
    c_span
    c_Icon
    c_Layout
    c_Content
    c_Footer
    c_Sider
    c_Breadcrumb
    c_BreadcrumbItem
    c_Menu
    c_SubMenu
    c_MenuItem
  } = CFX

  c_Content
    # style:
    #   padding: '0 50px'
    Breadcrumb: [
      # style:
      #   margin: '12px 0'
      'Home'
      'List'
      'App'
    ]
    content:
      c_Layout
        style: 
          padding: '24px 0'
          background: '#fff'
      ,
        c_Sider
          width: 200
          style:
            background: '#fff'
        ,
          c_Menu
            mode: "inline"
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

        c_Content
          style:
            padding: '0 24px'
            minHeight: 280
        , 'Content'

    footer: 'Ant Design ©2016 Created by Ant UED'
    # style: 
    #   textAlign: 'center'