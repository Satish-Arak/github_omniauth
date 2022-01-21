Rails.application.routes.draw do
  
  root to: "home#index"
  get 'home/contact_us'
  
  resources :authors do 
    resources :books
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
