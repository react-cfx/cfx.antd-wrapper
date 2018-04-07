import { linkTo } from '@storybook/addon-links'
import { getLinks } from 'cfx.link'
import cfxify from 'cfx.dom'

export default (actions = {}) => getLinks
  onSubmitToHouseList:
    [
      'Welcome'
      'to Storybook'
    ]
,
  story: linkTo
, (key) =>

  switch key
    when 'HouseList'
      action: (key) =>
        if actions[key]?
        then actions[key]()
        else undefined          
    else {}