Rails.application.routes.draw do

  resources :cocktail, only: [:index, :show, :new, :create] do
    resources :dose, only: [:new, :create]
  end
  resources :dose, only: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
