$ ->
  contact_form = $('form#contact_form')
  if contact_form.length
    error_message = contact_form.find('.error-messages')
    wrapper = $('.contact_form_on_main_page')
    contact_form.on 'ajax:success', (event, data, status, xhr) ->
      if data.msg
        info = '<h3>'+data.msg+'</h3>'
        wrapper.html(info)
        wrapper.css('text-align', 'center')
      return
    contact_form.on 'ajax:error', (event, xhr, status, error) ->
      if xhr.responseText
        list_of_errors = JSON.parse(xhr.responseText)
        result = '<ul>'
        for error in list_of_errors.error
          result += '<li>'+error+'</li>'
        result += '</ul>'
        error_message.html(result).show('slow')
      return