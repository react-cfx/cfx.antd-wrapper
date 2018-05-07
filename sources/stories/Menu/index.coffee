import { storiesOf } from '@storybook/react'
import prefixDom from 'cfx.react.dom'

import MenuOne from './MenuOne'
import MenuTwo from './MenuTwo'

CFX = prefixDom {
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
