import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Content from '../../Components/Content'

CFX = prefixDom {
  Content
}

export default =>

  storiesOf 'PageContent', module

  .add 'PageContent'

  , =>

    {
      c_Content
    } = CFX

    c_Content {}
    , '12331'