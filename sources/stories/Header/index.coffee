import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import Header from '../../Components/Header/Header'
import { getLinks } from 'cfx.react.link.dom'
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
      Link: getLinks
        Link: Links()
        kind: 'Welcome'
      SettingLink:
        getLinks
          Link: Links()
          kind: 'Welcome'

