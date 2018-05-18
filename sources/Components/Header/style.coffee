import styl from 'cfx.react.style/dist/index'


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
    width: '20px'
    height: '20px'
    display: 'inline-block'
    marginRight: '4pt'
    borderRadius: '10px'
    backgroundColor: 'gray'
    position: 'absolute'
    top: '22px'
    cursor: 'pointer'
  Word:
    position: 'absolute'
    left: '30px'
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