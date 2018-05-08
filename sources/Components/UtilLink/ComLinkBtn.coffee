import React, { Component } from 'react'
# import { ddbs as dd } from 'ddeyes'
import prefixDom from 'cfx.react.dom'
import getLinks from 'cfx.react.link'

CFX = prefixDom {}

export default ({ Link,kind }) => ({
	location
	children
}) =>
	CFX = CFX._.extends (
		getLinks Link()
		,
			"#{kind}": "/#{kind}"
	)

	render: () ->

		c_kind = CFX["c_#{kind}"]

		c_kind {}
		, children
