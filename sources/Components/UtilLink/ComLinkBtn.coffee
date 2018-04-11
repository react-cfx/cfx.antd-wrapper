import React, { Component } from 'react'
import { ddbs as dd } from 'ddeyes'
import cfxify from 'cfx.dom'
import getLinks from 'cfx.link'

CFX = cfxify {}

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
