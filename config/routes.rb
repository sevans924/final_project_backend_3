Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :student, only: [:index, :show, :create, :update]
  resources :counselor, only: [:index, :show, :create, :update]
  resources :check_in, only: [:index, :show, :create, :update]
  resources :parent, only: [:index, :show, :create, :update]

end
