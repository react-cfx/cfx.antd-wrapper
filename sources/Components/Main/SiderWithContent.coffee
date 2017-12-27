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

  [
    c_Content
      style:
        padding: '0 50px'
    ,
      c_Breadcrumb
        style:
          margin: '12px 0'
      ,
        c_BreadcrumbItem {}, 'Home'
        c_BreadcrumbItem {}, 'List'
        c_BreadcrumbItem {}, 'App'

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
          ,
            c_SubMenu
              key: "sub1"
              title: 
                c_span {}
                ,
                  c_Icon type: "user"
                , 'subnav 1'
            ,
              c_MenuItem
                key: "1"
              , 'option1'
              c_MenuItem
                key: "2"
              , 'option2'
              c_MenuItem
                key: "3"
              , 'option3'
              c_MenuItem
                key: "4"
              , 'option4'

            c_SubMenu
              key: "sub2"
              title: 
                c_span {}
                ,
                  c_Icon type: "laptop"
                , 'subnav 2'
            ,
              c_MenuItem
                key: "5"
              , 'option5'
              c_MenuItem
                key: "6"
              , 'option6'
              c_MenuItem
                key: "7"
              , 'option7'
              c_MenuItem
                key: "8"
              , 'option8'

            c_SubMenu
              key: "sub3"
              title: 
                c_span {}
                ,
                  c_Icon type: "notification"
                , 'subnav 3'
            ,
              c_MenuItem
                key: "9"
              , 'option9'
              c_MenuItem
                key: "10"
              , 'option10'
              c_MenuItem
                key: "11"
              , 'option11'
              c_MenuItem
                key: "12"
              , 'option12'


        c_Content
          style:
            padding: '0 24px'
            minHeight: 280
        , 'Content'

    c_Footer
      style: 
        textAlign: 'center'
    , 'Ant Design ©2016 Created by Ant UED'
  ]