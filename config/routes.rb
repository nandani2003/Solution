Rails.application.routes.draw do
  # /new_article/
  # get '/home' => 'home#index'
  # root "home#index"
  #  get '/home' ,to:"home#index"

  # root 'articles#index'
  # get '/articles', to: 'articles#index'
  # get '/articles/:id', to: 'articles#show', as: 'article'
  # get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  # get '/articles/new', to: 'articles#new', as: 'new_article'
  # post '/articles', to: 'articles#create'
  # patch '/articles/:id', to: 'articles#update'
  # delete '/articles/:id', to: 'articles#destroy'

  root "articles#index"
  resources :articles do
    resources :comments
  end
  
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest


end
