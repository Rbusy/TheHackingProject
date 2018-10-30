Rails.application.routes.draw do

  root 'home#index'


  post 'home/show', to: "home#show", as: 'home_show'
  get 'home/index/:id', to: 'home#anus'
  get 'team/index', as: 'team_index'
  get 'home/index', as: 'home'
  get 'contact/index', as: 'contact_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
