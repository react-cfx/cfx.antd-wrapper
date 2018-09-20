import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import Link from './Links'
# import getLinks from './LoginGetLinks'

import {
  LoginForm
  LoginCard
  CenterCard
  WithBackImg
  WithBackCanva as Login
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

    c_LoginForm
      Link: Link
      registerKind: 'Welcome'
      Change: (value) ->
        console.log value
      PChange: (value) ->
        console.log value
  .add 'LoginCard'
  , =>
    { c_LoginCard } = CFX
    c_LoginCard
      Link: Link
      registerKind: 'Welcome'
      Change: (value) ->
        console.log value
      PChange: (value) ->
        console.log value
  .add 'CenterCard'
  , =>
    { c_CenterCard } = CFX
    c_CenterCard
      Link: Link
      registerKind: 'Welcome'
      Change: (value) ->
        console.log value
      PChange: (value) ->
        console.log value
  .add 'WithBackImg'
  , =>
    { c_WithBackImg } = CFX
    c_WithBackImg
      Link: Link
      registerKind: 'Welcome'

  .add 'Login'
  , =>

    { c_Login } = CFX
    c_Login
      Link: Link
      registerKind: 'Welcome'
      values: [
        '平台管理员'
        '渠道用户'
      ]
      value: 1
      PChange: (value) ->
        console.log value
      version: '0.0.1'
      submit: (values) =>
        console.log { values }, '123'
