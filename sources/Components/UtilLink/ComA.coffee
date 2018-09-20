import cfxify from 'cfx.react.dom'
import domWithLink from 'cfx.react.link.dom'

CFX = cfxify {
  domWithLink
  'span'
}

export default ({
  Link
  kind
  onClick
  style
  name

}) =>
  {
    c_domWithLink
    c_span
  } = CFX

  c_domWithLink {
    Link
    kind
    onClick: => onClick
    domObj: =>
      c_span {
        style
      }
      , name
  }

# CFX = cfxify {
#   'span'
# }

# {
#   c_span
# } = CFX

# ALink = ({ Style,Name }) =>
#   c_span
#     style: Style
#   , Name

# export default ({
#   location
#   Link
#   name
#   style
#   children
# }) =>
#   CFX = cfxify {
#     ALink
#   }
  
#   {
#     c_ALink
#   } = CFX

#   if Link?
#     CFX = CFX._.extends {
#       Link
#     }

#     {
#       c_Link
#     } = CFX

#     c_Link {}
#     ,
#       c_ALink {
#         Style: style
#         Name: name
#       }
#   else
#     c_ALink {
#       Style: style
#       Name: name
#     }