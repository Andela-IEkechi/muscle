$(document).ready ->
  $(document).on 'click', '.modal-check', ->
    $(".modal-body #purchase").val( this.id );
    return
  return