Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :tiles
      resources :tilesets
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/tilesets/:id", to: 'tilesets#show'
  patch "/tilesets/:id", to: 'tilesets#update'
end
