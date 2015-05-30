jQuery ->
  $('#sorTable').dataTable(
    "aoColumnDefs": [
      { 'bSortable': false, 'aTargets': [ 2, 3 ] }
    ]
  )