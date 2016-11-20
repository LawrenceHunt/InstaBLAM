Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :posts
  get '/posts/hashtag/:name', to: 'posts#hashtags'

  root 'posts#index'

end
