$(document).on "turbolinks:load", ->

  navbar_top = $("#navbar-top")
  pathname = window.location.pathname

  if(pathname == "/")
    navbar_top.hide()

  login_button = $("#login_button")
  user_field = $("#user_field")
  password_field = $("#password_field")
  warningLabel = $("#warningLabel")

  login_button.on "click", ->
    if(user_field.val() == "" || user_field.val() == null ||
      password_field.val() == "" || password_field.val() == null)
        warningLabel.text("Informe todos os campos!")
    else
      warningLabel.text("Logando...")
      $.ajax '/main/verifica_usuario',
        type: 'GET'
        dataType: 'json'
        data: {
          username: user_field.val()
          password: password_field.val()
        }
        success: (data, textStatus, jqXHR) ->
          if (data.user_exists) # Se o usuário foi encontrado
            location.href = "/index"
          else
            warningLabel.text("Conta não encontrada!")
        error: (jqXHR, textStatus, errorThrown) ->
          warningLabel.text("Ocorreu um erro! Tente novamente!")





