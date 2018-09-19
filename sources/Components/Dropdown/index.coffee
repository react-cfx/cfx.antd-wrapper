import cfxify from 'cfx.react.dom'
import { 
  Menu
  Dropdown
  Button
  Icon
} from 'antd'
MenuItem = Menu.Item
CFX = cfxify {
  Menu
  MenuItem
  Dropdown
  Button
  Icon
}
{
  c_Menu
  c_MenuItem
  c_Dropdown
  c_Button
  c_Icon
} = CFX

export default ({
  onClick = =>
  trigger = 'click' # 'click' 'hover'
  children = []
  name = ''
}) =>
  menu = 
    c_Menu
      onClick: (e) =>
        onClick(e)
    ,
      (
        children.reduce (r, c, i) ->
          [
            r...
            c_MenuItem
              key: i
            , c
          ]
        , []
      )...
  
  c_Dropdown {
    overlay: menu
    trigger: [ trigger ]
  }
  ,
    c_Button
      style:
        marginLeft: '8px'
    , 
      name
      c_Icon
        type: 'down'