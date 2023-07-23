Rails.application.routes.draw do
  root 'days#index'


  get 'search', to: 'search#index'

  resources :days do
    resources :notes
  end
end
