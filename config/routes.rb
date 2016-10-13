Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
  end

  namespace :admin do
    root "application#index"

    resources :projects, only: [:new, :create, :destroy]
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # root to: "home#index"
 root to: "projects#index"
 resources :projects ,only: [:index, :show, :edit, :update] do
  resources :tickets
 end
 resources :customers
end
