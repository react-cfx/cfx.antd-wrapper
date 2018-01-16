import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Login, {
  LoginForm
  LoginCard
} from '../Components/Login'
  

CFX = prefixDom {
  LoginForm
  LoginCard
  Login
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

  .add 'Login'
  , =>

    { c_Login } = CFX
    c_Login {}
 