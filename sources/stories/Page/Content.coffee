import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
import ContentPage from '../../Components/Content'

CFX = cfxify {
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
