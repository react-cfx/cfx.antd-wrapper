import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import {
  LoginForm
  LoginCard
  LoginCenterCard
} from '../Components/Login'

CFX = prefixDom {
  LoginForm
  LoginCard
  LoginCenterCard
}

export default ->

  storiesOf 'Login', module

  .add 'LoginForm'
  , =>
    { c_LoginForm } = CFX
    c_LoginForm {}

  .add 'LoginCard'
  , =>
    { c_LoginCard } = CFX
    c_LoginCard {}

  .add 'LoginCenterCard'
  , =>

    { c_LoginCenterCard } = CFX
    c_LoginCenterCard {}
 