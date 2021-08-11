Rails.application.routes.draw do
  resources :restaurants, only: [ :new, :create, :show, :index ] do
    resources :reviews, only: [ :new, :create, :index ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
