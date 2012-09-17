Admin = 
  init: () ->
    Admin.del()
    Admin.showCars()
    Admin.addCar()
  del: () -> 
    $('a.delete').click ->
      anchor = this
      uri = '/people/' + $(this).attr("rel")
      $.ajax uri,
        type: 'DELETE'
        success: (t) ->
          $(anchor).parents("tr").remove()
  addCar: () ->
    $('a.addCar').click ->
      model = $('#car_model').val()
      year = $('#car_year').val()
      if !!model or !!year
        html = '<p>' + model + '-' + year + '</p>'      
        $('div.cars').find('div').append(html)
        $('#car_model').val('')
        $('#car_year').val('')
  showCars: () ->
    $('a.viewCars').click ->
      id = $(this).attr("rel")
      item = $('#' + id)
      if $(this).html() == 'view detail'
        $(this).html('hide detail')
        item.show()
      else
        $(this).html('view detail')
        item.hide()
      


Admin.init()
