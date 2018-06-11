import cfxify from 'cfx.react.dom'

CFX = cfxify {
  'a'
}

{
  c_a
} = CFX

ALink = ({ Style,Name }) =>
  c_a
    style: Style
  , Name

export default ({
  location
  Link
  name
  style
  children
}) =>
  CFX = cfxify {
    ALink
  }
  
  {
    c_ALink
  } = CFX

  if Link?
    CFX = CFX._.extends {
      Link
    }

    {
      c_Link
    } = CFX

    c_Link {}
    ,
      c_ALink {
        Style: style
        Name: name
      }
  else
    c_ALink {
      Style: style
      Name: name
    }