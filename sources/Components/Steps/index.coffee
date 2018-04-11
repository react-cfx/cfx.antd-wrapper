import React, { Component } from 'react'
import cfxify from 'cfx.dom'
import {
  Steps
  Icon
} from 'antd'
Step = Steps.Step

CFX = cfxify {
  Steps
  Step
  Icon
}

# current: number
## 当前显示指定当前步骤，从 0 开始记数。
# title: 数组
## ex [ { title: 'xx' type: 'xx' } ]

class StepsCurrent extends React.Component

  render: ->

    {
      c_Steps
      c_Step
      c_Icon
    } = CFX

    c_Steps.apply @, [
      key: '01'
      style:
        maxWidth: '750px'
        margin: '16px auto'
      current: @props.current
      (
        @props.title.reduce (r, c) =>
          [
            r...
            c_Step
              title: c.title
              icon:
                c_Icon
                  type: c.type
          ]
        , []
      )...
    ]

export default StepsCurrent
