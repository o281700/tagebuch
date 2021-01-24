Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'top#index'
  resources :blogs do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]
end
