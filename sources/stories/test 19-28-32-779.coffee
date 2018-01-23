import { storiesOf } from '@storybook/react'
import pageHeader from '../Components/Layout_Component/Test'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom { pageHeader }

export default ->

  storiesOf 'Test', module

  .add 'pageHeader'

  , =>

    { c_pageHeader } = CFX

    c_pageHeader {}
