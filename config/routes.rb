Rails.application.routes.draw do
  resources :books, only: [:index]
  resources :authors, only: [:show, :books]
end
