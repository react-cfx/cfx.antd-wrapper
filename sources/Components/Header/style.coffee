import styl from 'cfx.react.style/dist/index'
import random from './random'

style = 
  Container:
    backgroundColor: '#fff'
    height: '64px'
    lineHeight: '64px'
    borderBottom: '1px solid #e8e8e8'
  CircleContainer:
    width: '48px'
    height: '63px'
    marginRight: '20pt'
    backgroundColor: '#fff'
    float: 'right'
    position: 'relative'
  Circle:
    width: '32px'
    height: '32px'
    display: 'inline-block'
    borderRadius: '16px'
    textAlign: 'center'
    color: 'white'
    fontSize: '12px'
    lineHeight: '32px'
    backgroundColor: "rgb(#{random 0,255},#{random 0,255},#{random 0,255})"
    position: 'absolute'
    top: '16px'
    cursor: 'pointer'
  # Word:
  #   position: 'absolute'
  #   color: 'white'
  #   fontSize: '12px'
  #   # left: '3px'
  SettingContainer:
    ':hover':
      backgroundColor: 'gray'  
    transition: 'background-color 0.5s'
    width: '48px'
    height: '63px'
    marginRight: '14pt'
    backgroundColor: '#fff'
    float: 'right'
    position: 'relative'
    textAlign: 'center'
    verticalAlign: 'middle'
  Setting:
    fontSize: '20px'
    position: 'absolute'
    color: 'gray'
    top: '23px'
    right: '14px'
    cursor: 'pointer'
  BellContainer:
    ':hover':
      backgroundColor: 'gray'
      transition: 'background-color 0.5s'
    width: '48px'
    height: '63px'
    marginRight: '14pt'
    backgroundColor: '#fff'
    float: 'right'
    position: 'relative'
    textAlign: 'center'
    verticalAlign: 'middle'
  Bell:
    fontSize: '20px'
    padding: '4px'
    cursor: 'pointer'
    
export default styl style
,
  userGlamor: true