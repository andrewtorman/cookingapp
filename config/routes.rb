Rails.application.routes.draw do
  namespace :admin do
    resources :ingredient_types
  end

  resources :ingredients
end
