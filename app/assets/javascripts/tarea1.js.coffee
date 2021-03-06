Admin = 
  init: () ->
    Admin.delPerson()
    Admin.delCar()
    Admin.showCars()
    Admin.addCar()
    console.log "init"
  delPerson: () -> 
    $('a.delete.person').click ->
      if confirm("Are you sure you want to delete this person?")
        anchor = @
        uri = '/people/' + $(this).attr("rel")
        $.ajax uri,
          type: 'DELETE'
          success: (t) ->
            $(anchor).parents("tr").remove()
  delCar: () ->
    $('a.delete.car').click ->
      if confirm("Are you sure you want to delete this car?")
        anchor = @
        uri = '/cars/' + $(this).attr("rel")
        $.ajax uri,
          type: 'DELETE'
          success: (t) ->
            $(anchor).parents('.carItem').remove()
  addCar: () ->
    $('a.addCar').click ->
      model = $('#car_model').val()
      year = $('#car_year').val()
      if !!model or !!year
        id = $('#id').val()
        $.post '/cars', 
          car: person_id: id, model: model, year: year
          (t) ->
            if t == true
              html = '<li>' + model + '-' + year + '</li>'
              $('#cars').append(html)
              Admin.clearFields()
  showCars: () ->
    $('a.viewCars').click ->
      id = $(@).attr("rel")
      item = $('#' + id)
      if $(@).html() == 'view detail'
        $(@).html('hide detail')
        item.show()
      else
        $(@).html('view detail')
        item.hide()
  clearFields: () ->
    $('#car_model').val('')
    $('#car_year').val('')


Admin.init()
