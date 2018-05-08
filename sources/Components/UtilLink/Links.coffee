import { linkTo } from '@storybook/addon-links'
import { getLinks } from 'cfx.cfx.react.link'
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
