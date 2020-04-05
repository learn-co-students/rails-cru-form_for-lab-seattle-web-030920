Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, only: [:show, :create, :new, :edit, :update, :index]
  resources :genres, only: [:show, :create, :new, :edit, :update]
  resources :artists, only: [:show, :create, :new, :edit, :update]
end
