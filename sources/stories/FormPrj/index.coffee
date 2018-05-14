import { storiesOf } from '@storybook/react'
import prefixDom from 'cfx.react.dom'
import FormPrj from '../../Components/FormPrj/index'
import { Select } from 'antd'
Option = Select.Option
CFX = prefixDom {
	FormPrj
	Select
	Option
}

export default =>

	storiesOf 'FormPrj', module

	.add 'FormPrj'

	, =>

		{
			c_FormPrj
			c_Select
			c_Option
		} = CFX

		c_FormPrj
			# Layout: 'vertical'
			title: [
					keys: '省'
					type: 'select'
					key: 'Province'
					defaultValue: '支付宝'
					options: [
						'支付宝'
						'微信'
						'现金'
					]
					# style:
					# 	width: '110px'
				,
					keys: '省'
					type: 'select'
					key: 'Province'
					options: [
						'1'
						'2'
						'3'
					]
					style:
						width: '110px'
				,				
					keys: '市'
					type: 'normal'
					key: 'City'
					defaultValue: '2'
				,
					keys: '区'
					type: 'normal'
					key: 'Area'
					defaultValue: '3'
				,
					keys: '街道'
					type: 'normal'
					key: 'Street'
					defaultValue: '4'
				,
					keys: '小区'
					type: 'normal'
					key: 'Community'
					defaultValue: '5'
				,
					keys: '栋'
					type: 'normal'
					key: 'Building'
					defaultValue: '6'
				,
					keys: '单元'
					type: 'normal'
					key: 'Unit'
					defaultValue: '7'
				,
					keys: '楼层'
					type: 'normal'
					key: 'Floor'
					defaultValue: '8'
				,
					keys: '房号'
					type: 'normal'
					key: 'HouseId'
					defaultValue: '9'
			]
			Change: (value, key) ->
				console.log value, key 

		# [
		#   c_FormPrj
		#     key: 'FormPrj'
		#     Change: (
		#       (value,key) -> console.log { "#{key}":"#{value.target.value}"}
		#     ).bind @
		#     ChangeDate: (
		#       (date,dateString,key) -> console.log { "#{key}":"#{dateString}"}
		#     ).bind @
		#     ChangeAddress: (
		#       (value,key) -> console.log { "#{key}":"#{value}"}
		#     ).bind @
		#     ChangeSelect: (
		#       (value,key) -> console.log { "#{key}":"#{value}"}
		#     ).bind @
		#     options: [
		#         value: '湖北'
		#         label: '湖北'
		#         children: [
		#           value: '武汉'
		#           label: '武汉'
		#           children: [
		#             value: '武昌'
		#             label: '武昌'
		#           ]
		#         ]
		#       ,
		#         value: '四川'
		#         label: '四川'
		#         children: [
		#           value: '成都'
		#           label: '成都'
		#           children: [
		#             value: '高新区'
		#             label: '高新区'
		#           ]
		#         ]
		#     ]
		#     selectAfter:
		#       c_Select
		#         defaultValue: '月'
		#         onChange: (value) => console.log value 
		#         style:
		#           width: '80px'
		#       ,
		#         c_Option
		#           value: '日'
		#         , '日'
		#         c_Option
		#           value: '年'
		#         , '年'
		#     Layout: 'vertical'
		#     title: [
		#         keys: 'normal'
		#         type: 'normal'
		#         key: 'normal'
		#       ,
		#         keys: 'date'
		#         type: 'date'
		#         key: 'date'
		#       ,
		#         keys: 'address'
		#         type: 'address'
		#       ,
		#         keys: 'select'
		#         type: 'select'
		#       ,
		#         keys: 'inputSelect'
		#         type: 'inputSelect'
		#       ,
		#         keys: 'number'
		#         type: 'number'
		#     ]
				
		#   c_FormPrj
		#     Change: (
		#       (value,key) -> console.log { "#{key}":"#{value.target.value}" }
		#     ).bind @
		#     ChangeDate: (
		#       (date,dateString,key) -> console.log { "#{key}":"#{dateString}"}
		#     ).bind @
		#     ChangeAddress: (
		#       (value,key) -> console.log { "#{key}":"#{value}"}
		#     ).bind @
		#     ChangeSelect: (
		#       (value,key) -> console.log { "#{key}":"#{value}"}
		#     ).bind @
		#     options: [
		#         value: '湖北'
		#         label: '湖北'
		#         children: [
		#           value: '武汉'
		#           label: '武汉'
		#           children: [
		#             value: '武昌'
		#             label: '武昌'
		#           ]
		#         ]
		#       ,
		#         value: '四川'
		#         label: '四川'
		#         children: [
		#           value: '成都'
		#           label: '成都'
		#           children: [
		#             value: '高新区'
		#             label: '高新区'
		#           ]
		#         ]
		#     ]
		#     selectAfter:
		#       c_Select
		#         defaultValue: '月'
		#         onChange: (value) => console.log value 
		#         style:
		#           width: '80px'
		#       ,
		#         c_Option
		#           value: '日'
		#         , '日'
		#         c_Option
		#           value: '年'
		#         , '年'
		#     btnright: '下一步'
		#     key: 'FormPrj1'
		#     title: [
		#         keys: 'normal'
		#         type: 'normal'
		#         key: 'normal'
		#       ,
		#         keys: 'date'
		#         type: 'date'
		#       ,
		#         keys: 'address'
		#         type: 'address'
		#       ,
		#         keys: 'select'
		#         type: 'select'
		#       ,
		#         keys: 'inputSelect'
		#         type: 'inputSelect'
		#       ,
		#         keys: 'number'
		#         type: 'number'
		#     ]
		# ]
