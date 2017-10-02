Rails.application.routes.draw do

  devise_for :users
  root to: "users#show"
  resources :users do
    resources :contacts
  end
  patch "/update_contacted_at/:id" => "contacts#update_contacted_at", as: :update_contacted_at_for
  post '/update_form' => 'contacts#update_form'
end
