import { Card } from 'antd'
import Form from './Form'
import cfxify from 'cfx.react.dom'

import {
	mapProps
	compose
} from 'recompose'

CFX = cfxify {
	Card
	Form
}

hocMapProps = mapProps (ownerProps) =>
	{
		ownerProps...
		style: {
			(
				if ownerProps.style?
				then ownerProps.style
				else {}
			)...
			width: 300
		}
	}

enhance = compose hocMapProps

LoginCard = enhance (props) =>

	{
		c_Card
		c_Form
	} = CFX

	render: ->
		
		c_Card props
		,
			c_Form {
				Link: @props.Link
				registerKind: @props.registerKind
				value: @props.value
				values: @props.values
				Change: @props.Change
				# (
				#   if @props.submit
				#   then submit: @props.submit
				#   else {}         
				# )...
				(
					if @props.click
					then click: @props.click
					else {}
				)...
				(
					if @props.version
					then version: @props.version
					else {}
				)...        
			}

export default LoginCard
