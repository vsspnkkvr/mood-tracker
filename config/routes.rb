Rails.application.routes.draw do
  resources :days do
    resources :notes
  end
end
