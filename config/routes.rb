Rails.application.routes.draw do

  devise_for :users
  root to: "users#show"
  resources :users do
    member do
      resources :contacts
    end
  end

end
