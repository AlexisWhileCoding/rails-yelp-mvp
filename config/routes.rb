Rails.application.routes.draw do
  resources :restaurants, only: [:show, :create, :new, :index] do
    resources :reviews, only: [ :new, :create ]
  end
end
