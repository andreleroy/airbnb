Rails.application.routes.draw do
  get 'photos/index'
  devise_for :users
  root to: 'listings#index'
  resources :listings, only: [:index, :show, :new, :create] do
    resources :photos, only: [ :create, :destroy, :index ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
