import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import Header from '../../Components/Header/Header'
import Links from '../../stories/Links'
CFX = cfxify {
  Header
}

export default ->

  storiesOf 'Header', module

  .add 'Header'
  , =>

    { c_Header } = CFX

    c_Header
      onClick: => console.log '123'
      settingClick: => console.log 'abc'
      exitClick: => console.log 'hello world'
      name: '李强'
      Link: Links
      kind: 'Welcome'
      SettingLink: Links
      SettingKind: 'Welcome'
      exitLink: Links
      exitKind: 'Welcome'
      exit: '退出'

