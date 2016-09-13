Rails.application.routes.draw do
  root :to => 'home#index'

  # get "/log-in" => "sessions#new"
  # post "/log-in" => "sessions#create"
  # get "/log-out" => "sessions#destroy", as: :log_out

  resources :users
  resources :sessions
  delete '/logout' => 'sessions#destroy'


  resources :questions do
    resources :answers, :except => [:show, :index]
  end
end
