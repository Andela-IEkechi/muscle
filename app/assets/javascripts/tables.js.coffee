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

  $('#invoices').dataTable(
    "aoColumnDefs": [
      { 'bSortable': false, 'aTargets': [ 0, 2, 4, 5 ] }
    ]
  )

  $('#releases').dataTable(
    "aoColumnDefs": [
      { 'bSortable': false, 'aTargets': [ 2, 3 ] }
    ]
  )