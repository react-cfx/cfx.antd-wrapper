import prefixDom from 'cfx.react.dom'
import { Layout } from 'antd'

CFX = prefixDom {
  Layout
}

export default ({
  props = {}
  layers = []
}) =>

  #
  # props = 
  #   props: xxx
  #   layer: [
  #
  #     withLayout: true
  #     children:
  #       c_H1 {}
  #       , 'Hello World!!!'
  #
  #     c_H1 {}
  #     , 'Hello World!!!'
  #
  #     withLayout: false
  #     children: c_CenterCard {}
  #
  #   ]
  #

  { c_Layout } = CFX

  layerStyle =
    position: 'absolute'
    width: '100%'
    minHeight: '100vh'

  c_Layout.apply null
  , [
    props
    (
      layers.reduce (r, c) =>
        [
          r...
          (
            if c.child?
            then (
              if c.withLayout? and c.withLayout is false
              then [ c.child ]
              else [ 
                c_Layout
                  style: {
                    layerStyle...
                    (
                      if c.layout?.style?
                      then c.layout.style
                      else {}
                    )...
                  }
                ,
                  c.child
              ]
            )
            else [
              c_Layout
                style: layerStyle
              , c
            ]
          )...
        ]
      , []
    )...
  ]
