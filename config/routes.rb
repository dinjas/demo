Rails.application.routes.draw do
  resources :frogs

  root to: 'frogs#index'
end
