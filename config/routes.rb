Rails.application.routes.draw do
  root "blog/posts#index"

  namespace :author do
    resources :posts
  end

  scope module: 'blog' do
    get 'about' => 'pages#about'
    get 'contact' => 'pages#contact'
    get 'posts' => 'posts#index'
    get 'posts/:id' => 'posts#show', as: :post
  end
  
end
