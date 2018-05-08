# import { ddbs as dd } from 'ddeyes'
import { Form } from 'antd'
FormItem = Form.Item
import prefixDom from 'cfx.react.dom'
import {
  mapProps
  compose
} from 'recompose'

CFX = prefixDom {
  FormItem
}

handleDecorator = ({
  decorator
  name
  props
  children
}) =>
  (
    decorator name, props
  ) children

getChildren = (children) =>
  if children.decorator?
    handleDecorator children
  else if Array.isArray children
    children.reduce (r, c) =>
      [
        r...
        if c.decorator?
        then handleDecorator c
        else c
      ]
    , []
  else children

hocMapProps = mapProps ({
  children
  otherProps...
}) =>
  {
    otherProps...
    children: getChildren children
  }

enhance = compose hocMapProps

FormField = enhance ( props ) =>
  { c_FormItem } = CFX
  c_FormItem props

export default FormField
