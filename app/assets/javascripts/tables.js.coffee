jQuery ->
  $('#products').dataTable(
    "aoColumnDefs": [
      { 'bSortable': false, 'aTargets': [ 2, 3 ] }
    ]
  )

  $('#consignments').dataTable(
    "aoColumnDefs": [
      { 'bSortable': false, 'aTargets': [ 2 ] }
    ]
  )