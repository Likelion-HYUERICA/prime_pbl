Rails.application.routes.draw do
  get 'room/index'

  devise_for :users
   devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
end
  get 'home/index'
  get 'home/school'
  get 'time/index'
  get 'room/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
