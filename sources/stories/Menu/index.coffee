import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Menu from './Menu'

CFX = prefixDom {
  Menu
}

export default =>

  storiesOf 'Menu', module

  .add 'Menu_One'
  , =>

    { c_Menu } = CFX
    c_Menu {}
