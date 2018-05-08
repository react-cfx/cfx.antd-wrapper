import { storiesOf } from '@storybook/react'
import prefixDom from 'cfx.react.dom'
import Header from '../../Components/Header'

CFX = prefixDom {
  Header
}

export default =>

  storiesOf 'Header', module

  .add 'Header'
  , =>

    { c_Header } = CFX
    c_Header {}

