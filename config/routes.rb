Rails.application.routes.draw do
  devise_for :authors
  root "blog/posts#index"

  namespace :authors do
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
