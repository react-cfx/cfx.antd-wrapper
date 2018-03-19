import { storiesOf } from '@storybook/react'
import Header from '../Components/Header/Header'
import MainContent from '../Components/Layout/MainContent'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom { Header,MainContent }

export default ->

  storiesOf 'Header', module

  .add 'Header'

  , =>

    { c_Header, c_MainContent } = CFX

    c_MainContent
      header: c_Header {}
