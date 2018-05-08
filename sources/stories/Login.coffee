import { storiesOf } from '@storybook/react'
import prefixDom from 'cfx.react.dom'
import Link from './Links'
import getLinks from './LoginGetLinks'

import {
  LoginForm
  LoginCard
  CenterCard
  WithBackImg
  WithBackCanva as Login
} from '../Components/Login'

CFX = prefixDom {
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
      Link: getLinks Link
      submit: (values) =>
        console.log { values }, '123'
