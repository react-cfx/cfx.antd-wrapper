import { linkTo } from '@storybook/addon-links'
import { getLinks } from 'cfx.react.link/dist/main.js'
import prefixDom from 'cfx.react.dom'

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
