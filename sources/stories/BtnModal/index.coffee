import { storiesOf } from '@storybook/react'
import prefixDom from 'cfx.react.dom'
import BtnModal from '../../Components/Cards/BtnModal'

CFX = prefixDom {
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


