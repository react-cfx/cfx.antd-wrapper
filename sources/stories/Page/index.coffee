import { storiesOf } from '@storybook/react'
import Header from './Header'
import Content from './Content'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Header
  Content 
}

export default ->

  storiesOf 'Page', module

  .add 'Header'

  , =>

    { c_Header } = CFX

    c_Header {}
  
  . add 'Content'
  , =>

    { c_Content } = CFX

    c_Content {}