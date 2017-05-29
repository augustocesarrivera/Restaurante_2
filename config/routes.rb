Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root :to => "home#index"
    match 'home' => 'home#index', via: 'get'
    resources :home
    resources :restaurantes
    resources :pratos
end
