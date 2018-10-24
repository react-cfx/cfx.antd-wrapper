import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'
import BtnModal from '../../Components/Cards/BtnModal'

CFX = cfxify {
  'div'
  BtnModal
}

export default =>

  storiesOf 'BtnModal', module

  .add 'BtnModal'

  , =>

    {
      c_div
      c_BtnModal
    } = CFX

    c_BtnModal
      type: 'primary'
      BtnTitle: '按钮'
      ModalTitle: '这是一个标题'
      handleOk: ->
        console.log 'ok'
      ModalContent:
        c_div {}
        , 'HelloWorld!!!'    


