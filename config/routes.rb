Rails.application.routes.draw do
  resources :wikis

  devise_for :users
  get 'about' => 'welcome#about'

  root 'welcome#index'

  resources :users do
    member do
      get :confirm_email
    end
  end

  resources :charges, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
