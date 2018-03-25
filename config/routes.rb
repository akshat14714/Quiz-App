Rails.application.routes.draw do
  get 'genre_display', to:"genre_display#new"

  get '/play',   to:'genre_display#show'
  post '/play',  to:'genre_display#check'

  resources :leaderboards
  resources :questions
  resources :sub_genres
  resources :genres
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { registrations: "registrations"}

  root 'home#index'

  post '/questions/:id' => 'questions#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
