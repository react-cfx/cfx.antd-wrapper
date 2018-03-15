import { prefixDom } from 'cfx.dom'
CFX = prefixDom {
  'div'
}

export default ({
  props...
})=>

  render: ->
    {
      title
      Content
    } = props

    {
      c_div
    } = CFX

    c_div
      style:
        marginBottom: '24px'
    ,
      c_div
        style:
          background: '#fff'
          borderBottom: '1px solid #e8e8e8'
          padding: '0 24px'
          borderRadius: '2px 2px 0 0'
          zoom: '1'
          marginBottom: '-1px'
          minHeight: '48px'
      ,
        c_div
          style:
            display: 'flex'
        ,
          c_div
            style:
              fontSize: '16px'
              padding: '16px 0'
              textOverflow: 'ellipsis'
              overflow: 'hidden'
              whiteSpace: 'nowrap'
              color: 'rgba(0,0,0,.85)'
              fontWeight: '500'
              display: 'inline-block'
              flex: '1 1 0%'
          , title

      c_div
        style:
          padding: '24px'
          zoom: '1'
      , Content