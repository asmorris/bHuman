Rails.application.routes.draw do

  devise_for :users
  get '/about', to: 'static_pages#about'
  get '/faq', to: 'static_pages#faq'

  resources :kindness
  get 'kindness/daily'
  get 'kindness/weekly'
  get 'kindness/monthly'
  get 'kindness/all_time'

  root to: "kindness#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
