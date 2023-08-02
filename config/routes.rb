Rails.application.routes.draw do
  devise_for :users
  
  root 'days#index'

  get 'search', to: 'search#index'

  resources :days do
    resources :notes
  end

end
