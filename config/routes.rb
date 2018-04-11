Rails.application.routes.draw do

  
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get '/faq', to: 'static_pages#faq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
