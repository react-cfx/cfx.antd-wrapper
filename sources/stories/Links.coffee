import { linkTo } from '@storybook/addon-links'
import { getLinks } from 'cfx.react.link'
import cfxify from 'cfx.react.dom'

export default (actions = {}) => getLinks
  onSubmitLinks: [
    'Layout'
    'Content'
  ]
  Welcome: [
    'Welcome'
    'to Storybook'
  ]
,
  story: linkTo
, (key) =>

  switch key
    when 'onSubmitLinks'
      action: (key) =>
        if actions[key]?
        then actions[key]()
        else undefined
    when 'Welcome'
      action: (key) =>
        if actions[key]?
        then actions[key]()
        else undefined          
    else {}