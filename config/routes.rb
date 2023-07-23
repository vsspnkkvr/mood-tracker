Rails.application.routes.draw do
  resources :users
  root 'days#index', as: 'home'

  get 'search', to: 'search#index'

  resources :days do
    resources :notes
  end

end
