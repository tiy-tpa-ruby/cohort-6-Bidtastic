$(document).on('turbolinks:load', function() {
  $('.searchable-button').click(function(event) {
    // Even though you are a form button, please don't submit the form
    // we are going to handle all of this in javascript
    event.preventDefault()

    var search = $('.searchable-items').val()
    $.ajax({
      method: 'GET',
      url: '/',
      data: { search: search},
      dataType: 'script'
    });

// Search box saves text input as "search" variable.  Ajax should then search the item index (/),
// and the item_controller should output an index where the search variable is equal to the item.

  })
})
