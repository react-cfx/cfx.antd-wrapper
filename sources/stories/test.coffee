import { storiesOf } from '@storybook/react'
import Test from '../Components/Layout_Component/Page'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom { Test }

export default ->

  storiesOf 'Test', module

  .add 'Test'

  , =>

    { c_Test } = CFX

    c_Test {}
