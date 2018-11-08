import { message } from 'antd'

export default ({
  type
  messages
  duration
  onClose
}) =>
  message[type] messages, duration, onClose
