Rails.application.routes.draw do
  root 'top#index'
  resources :blogs, only: [:index, :new, :create]
end
