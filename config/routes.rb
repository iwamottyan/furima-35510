Rails.application.routes.draw do
  # devise_for :items
  devise_for :users
  root to: "items#index"
  resources :items, only: [:new, :create, :show, :edit] do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

