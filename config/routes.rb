Rails.application.routes.draw do
  root 'main#login'
  resources :pedidos
  resources :produtos
  resources :fornecedores
  resources :clientes
  get 'main/login'
  get 'main/index'
  get '/login', :to => redirect('main/login')
  get '/index', :to => redirect('main/index')
  get 'main/verifica_usuario'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
