Rails.application.routes.draw do
  root 'clientes#index'
  resources :pedidos
  resources :produtos
  resources :fornecedores
  resources :clientes
  get 'main/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
