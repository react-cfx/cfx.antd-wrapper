import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'

import {
  LoginForm
  LoginCard
  CenterCard
  WithBackImg
  WithBackCanvas as Login
} from '../Components/Login'

CFX = cfxify {
  LoginForm
  LoginCard
  Login
  CenterCard
  WithBackImg
}

export default =>

  storiesOf 'Login', module

  .add 'LoginForm'
  , =>
    { c_LoginForm } = CFX
    c_LoginForm {}

  .add 'LoginCard'
  , =>
    { c_LoginCard } = CFX
    c_LoginCard {}

  .add 'CenterCard'
  , =>
    { c_CenterCard } = CFX
    c_CenterCard {}

  .add 'WithBackImg'
  , =>
    { c_WithBackImg } = CFX
    c_WithBackImg {}

  .add 'Login'
  , =>

    { c_Login } = CFX
    c_Login
      submit: (values) =>
        console.log { values }, '123'
