Rails.application.routes.draw do
  root 'home#index'

  get 'search', to: 'search#index'

  resources :days do
    resources :notes
  end

end
