Rails.application.routes.draw do

  devise_for :users
  root to: "users#show"
  resources :users do
    member do
      resources :contacts
    end
  end
  patch "/update_contacted_at/:id" => "contacts#update_contacted_at", as: :update_contacted_at_for

end
