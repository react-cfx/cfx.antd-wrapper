import { storiesOf } from '@storybook/react'
import message from '../../Components/Messages'
import cfxify from 'cfx.react.dom'
import { Button } from 'antd'

CFX = cfxify { Button }

export default ->

  storiesOf 'Message', module

  .add 'Message'

  , =>

    info = =>
      message
        type: 'info'
        messages: '报错'
        duration: 3
        onClose: =>
          console.log '1111'

    { c_Button } = CFX

    c_Button
      onClick: =>
        info()
    , '按钮'
