import { storiesOf } from '@storybook/react'
import DropDown from '../../Components/DropDown'

import cfxify from 'cfx.react.dom'

CFX = cfxify {
  DropDown
}

export default ->

  storiesOf 'DropDown', module

  .add 'DropDown'

  , =>

    {
      c_DropDown
    } = CFX

    c_DropDown
      children: [
        123
        234
        345
      ]
      name: '选择'
      # trigger: 'hover'
      onClick: (e) =>
        console.log 'click!!!', e