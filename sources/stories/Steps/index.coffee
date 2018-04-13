import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
import Steps from '../../Components/Steps'

CFX = cfxify {
  Steps
}

export default =>

  storiesOf 'Steps', module

  .add 'Steps'

  , =>

    {
      c_Steps
    } = CFX

    c_Steps
      current: 0
      title: [
          key: '01'
          title: 'Login'
          type: 'user'
        ,
          key: '02'
          title: 'Verification'
          type: 'solution'
        ,
          key: '03'
          title: 'pay'
          type: 'loading'
        ,
          key: '04'
          title: 'Done'
          type: 'smile-o'
      ]

