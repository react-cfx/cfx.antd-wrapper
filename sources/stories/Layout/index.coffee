import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'

import Content from './Content'

import PageOneSider from './PageOneSider'
import PageTwoSider from './PageTwoSider'

import ContentWithSider from './ContentWithSider'
import PageContentWithinSider from './PageContentWithinSider'

CFX = cfxify {
  Content

  PageOneSider
  PageTwoSider

  ContentWithSider
  PageContentWithinSider
}

export default ->

  storiesOf 'Layout', module

  .add 'Content'
  , =>
    { c_Content } = CFX
    c_Content {}

  .add 'PageOneSider'
  , =>

    { c_PageOneSider } = CFX
    c_PageOneSider {}

  .add 'PageTwoSider'
  , =>

    { c_PageTwoSider } = CFX
    c_PageTwoSider {}

  .add 'ContentWithSider'
  , =>

    { c_ContentWithSider } = CFX
    c_ContentWithSider {}

  .add 'PageContentWithinSider'
  , =>

    { c_PageContentWithinSider } = CFX
    c_PageContentWithinSider {}
