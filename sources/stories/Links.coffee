import { linkTo } from '@storybook/addon-links'
import { getLinks } from 'cfx.link'
import cfxify from 'cfx.dom'

export default (actions = {}) => getLinks
  onSubmitLinks: [
    'Layout'
    'Content'
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
    else {}