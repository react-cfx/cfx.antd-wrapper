import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
import Header from '../../Components/Header'

CFX = cfxify {
  Header
}

export default =>

  storiesOf 'Header', module

  .add 'Header'
  , =>

    { c_Header } = CFX
    c_Header {}

