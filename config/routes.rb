Rails.application.routes.draw do
  devise_for :users
  root to: 'consume_money#index'

   resources :cunsume_moneys do
    end
  
  resources :rimit_credits do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
