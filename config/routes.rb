Rails.application.routes.draw do
  devise_for :authors
  root "blog/posts#index"

  namespace :authors do
    get '/account' => 'accounts#edit', as: :account
    put '/infor' => 'accounts#update_infor', as: :infor
    put '/password' => 'accounts#update_password', as: :password
    resources :posts do
      put 'publish' => 'posts#publish', on: :member, as: :publish
      put 'unpublish' => 'posts#unpublish', on: :member, as: :unpublish
    end
  end

  scope module: 'blog' do
    get 'about' => 'pages#about'
    get 'contact' => 'pages#contact'
    get 'posts' => 'posts#index'
    get 'posts/:id' => 'posts#show', as: :post
  end
  
end
