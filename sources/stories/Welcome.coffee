import { storiesOf } from '@storybook/react'
import { Welcome } from '@storybook/react/demo'

import cfxify from 'cfx.dom'

CFX = cfxify { Welcome }

export default ->

  storiesOf 'Welcome', module

  .add 'to Storybook'

  , =>

    { c_Welcome } = CFX

    c_Welcome {}
