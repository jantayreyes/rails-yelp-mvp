Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #index, new, create, show
  resources :restaurants, only: [:index, :show, :new, :create] do
  # restaurants/restaurant_id/reviews/new
  resources :reviews, only: [:new, :create]
  end
end
