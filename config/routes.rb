Rails.application.routes.draw do

  root to: 'recipes#index'

  resources :recipes, only: [:new, :create, :show]
  resources :kitchens, only: [:new, :create, :show]
  resources :type_of_foods, only: [:new, :create, :show]
end
