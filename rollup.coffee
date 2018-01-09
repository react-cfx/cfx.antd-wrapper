# import dd from 'ddeyes'
import {
  coffee2
  coffeepath
} from 'cfx.rollup-plugin-coffee2'
import cleanup from 'rollup-plugin-cleanup'

# import replace from 'rollup-plugin-re'

plugins = [

  # replace
  #   patterns: [
  #     transform: (code, id) =>
  #       codes = code.split '\n'
  #       codes = codes.reduce (r, codeline) =>
  #         codeline =
  #           if ( /'.*\.css'/.test codeline ) and
  #           ( /^import/.test codeline )
  #           then codeline.replace /.css/g, '.styl'
  #           else codeline
  #         [
  #           r...
  #           codeline
  #         ]
  #       , []
  #       codes.join '\n'
  #   ]

  coffee2
    bare: true
    sourceMap: true
  coffeepath()
  cleanup()
]

export default {
  input: './index.js'
  output:
    file: './dist/bundle.js'
    format: 'cjs'
  plugins
}
