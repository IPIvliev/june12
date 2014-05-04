June12::Application.routes.draw do

  resources :users


  resources :products


  resources :posts


  get "static_pages/index"

  get "static_pages/about"

  get "static_pages/contacts"

  get "static_pages/gallery"

  root :to => 'static_pages#index'

end
