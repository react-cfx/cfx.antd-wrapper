import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
import Content from '../../Components/Content'

CFX = cfxify {
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
