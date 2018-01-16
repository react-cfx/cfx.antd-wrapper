import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Login from '../Components/Login/index'

CFX = prefixDom {
  Login
}

export default =>

  storiesOf 'Login', module

  .add 'Login'

  , =>

    {
      c_Login
    } = CFX
    
    c_Login {}

 