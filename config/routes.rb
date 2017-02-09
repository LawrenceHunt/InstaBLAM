Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :posts do
    resources :likes
    end
    get '/posts/hashtag/:name', to: 'posts#hashtags'
    root 'posts#index'
end
