import { linkTo } from '@storybook/addon-links'
import cfxify from 'cfx.react.dom'

export default (actions = {}) => getLinks
  Test:
    [
      'Welcome'
      'to Storybook'
    ]
,
  story: linkTo
, (key) =>

  switch key
    when 'Test'
      action: (key) =>
        if actions[key]?
        then actions[key]()
        else undefined        
    else {}
