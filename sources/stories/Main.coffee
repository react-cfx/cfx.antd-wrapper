import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import SiderBar from '../Components/Main/SiderBar'
import MainContent from '../Components/Main/MainContent'
import SiderBySider from '../Components/Main/SiderBySider'
import SiderWithSider from '../Components/Main/SiderWithContent'

import SiderContent from '../Components/Main/SiderContent'

import MainPage from '../Components/Main/MainPage'
import MainPage2 from '../Components/Main/MainPage2'

CFX = prefixDom {
  SiderBar
  MainContent
  SiderBySider
  SiderWithSider
  SiderContent
  MainPage
  MainPage2
}

export default ->

  storiesOf 'Main', module

  .add 'SiderBar'
  , =>
    { c_SiderBar } = CFX
    c_SiderBar {}

  .add 'SiderContent'
  , =>
    { c_SiderContent } = CFX
    c_SiderContent {}

  .add 'MainContent'
  , =>
    { c_MainContent } = CFX
    c_MainContent {}

  .add 'SiderWithSider'
  , =>

    { c_SiderWithSider } = CFX
    c_SiderWithSider {}

  .add 'SiderBySider'
  , =>

    { c_SiderBySider } = CFX
    c_SiderBySider {}

  .add 'MainPage'
  , =>

    { c_MainPage } = CFX
    c_MainPage {}

  .add 'MainPage2'
  , =>

    { c_MainPage2 } = CFX
    c_MainPage2 {}