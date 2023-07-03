Rails.application.routes.draw do
  get 'search', to: 'search#index'
  resources :days do
    resources :notes
  end
end
