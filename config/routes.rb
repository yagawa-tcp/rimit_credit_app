Rails.application.routes.draw do
  devise_for :users
  root to: 'rimit_credit#index'

  resources :credit_rimit do
    collection do 
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
