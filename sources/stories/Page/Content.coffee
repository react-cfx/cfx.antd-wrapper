import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import ContentPage from '../../Components/Content'

CFX = prefixDom {
  'div'
  ContentPage
}

export default =>

  storiesOf 'ContentPage', module

  .add 'ContentPage'

  , =>

    {
      c_div
      c_ContentPage
    } = CFX

    c_ContentPage
      Content: [
        c_div {}
        , '123'
        c_div {}
        , '1234'
        c_div {}
        , '12345'
      ]