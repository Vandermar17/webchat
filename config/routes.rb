Rails.application.routes.draw do
  root to: 'users#index'

  resources :sessions, only: [:new, :create, :destroy]

  resources :users do
    resources :chats do
      resources :chat_messages
    end
  end

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"

  get "/registration" => "users#new", as: "registration"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
