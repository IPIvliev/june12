June12::Application.routes.draw do

  resources :photos


  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users
  #, :path => '', :path_names => {:sign_in => 'admin'}
  resources :users
  resources :products

  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :posts

  get "static_pages/index"
  get "index.html", :to => "static_pages#index"

  get "/about.html", to: "static_pages#about"
  get "/program.html", to: "static_pages#program"
  get "/history.html", to: "static_pages#history"

  get "/partners.html", :to => "static_pages#partners"
  get "/show.html", :to => "static_pages#show"
  get "/contacts.html", :to => "static_pages#contacts"

  #Users


  root :to => 'static_pages#index'

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'


end
