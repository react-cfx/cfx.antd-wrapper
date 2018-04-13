import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
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
      ModalContent:
        c_div {}
        , 'HelloWorld!!!'    


