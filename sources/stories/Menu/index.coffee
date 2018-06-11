import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import MenuOne from './MenuOne'
import MenuTwo from './MenuTwo'

CFX = cfxify {
  MenuOne
  MenuTwo
}

export default =>

  storiesOf 'Menu', module

  .add 'Menu_One'
  , =>

    { c_MenuOne } = CFX
    c_MenuOne {}

  .add 'Menu_Two'
  , =>

    { c_MenuTwo } = CFX
    c_MenuTwo {}
