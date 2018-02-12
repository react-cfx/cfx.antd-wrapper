import styl from 'cfx.style'

style =

  editable_cell:
    position: 'relative'

  editable_cell_input_wrapper:
    paddingRight: '24px'

  editable_cell_text_wrapper:
    paddingRight: '24px'
    padding: '5px 24px 5px 5px'

  editable_cell_icon:
    position: 'absolute'
    right: '0'
    bottom: '5'
    width: '20'
    cursor: 'pointer'
    display: 'none !important'
    lineHeight: '18px !important'

  editable_cell_icon_check:
    position: 'absolute'
    right: '0'
    width: '20px'
    top: '8'
    cursor: 'pointer'
    lineHeight: '28px'

  components_table_demo_nested:
    "& .editPen:hover":
      "& .Icon_Edit":
        display: 'inline-block !important'
    "& .table-operation":
      "& a:not(:last-child)":
        marginRight: '24px'
    "& .ant-table-expanded-row > td:last-child":
      padding: '0 48px 0 8px'
    "& .ant-table-expanded-row":
      "& .ant-table-row:last-child":
        "& td":
          border: 'none'
      "& .ant-table-thead > tr > th":
        background: 'none'
     "& .ant-table-expanded-row:hover > td":
        background: '#fbfbfb'
      "& .ant-table-row":
        "& td:first-child":
          paddingLeft: '0'
      "& .ant-table-thead":
        "& th:first-child":
          paddingLeft: '0'
        "& th":
          borderBottom: '1px solid #e9e9e9'

  editable_add_btn:
    background: 'red'
    position: 'relative'

export default styl style
,
  userGlamor: true