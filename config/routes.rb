Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'search', to: 'search#index'

  resources :days do
    resources :notes
  end

end
