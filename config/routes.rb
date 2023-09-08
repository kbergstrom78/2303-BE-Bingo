Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bingo, only: [:new] do
    collection do
      get :caller
      get :card
    end
  end

  post '/set_session', to: 'bingo#set_session'
end
