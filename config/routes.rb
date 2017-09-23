Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
  
  namespace :api do
    resources :activities
  end

  resources :checkins

  root 'checkins#index'
end
