Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'home#index'
  get 'users/primeiro_cadastro'

  # Resources
  resources :sindicalizados
  resources :enderecos
  resources :telefones

  # match 'perfil/cadastro', controller: 'sindicalizado', action: 'new', via: 'post'
  # match 'perfil/dados_pessoais', controller: 'sindicalizado', action: 'show', via: 'get'




end
