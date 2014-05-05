June12::Application.routes.draw do

  devise_for :users

  resources :users


  resources :products


  resources :posts


  get "static_pages/index"

  get "static_pages/about"

  get "/contacts.html", :to => "static_pages#contacts"

  get "/gallery.html", :to => "static_pages#gallery"

  root :to => 'static_pages#index'

end
