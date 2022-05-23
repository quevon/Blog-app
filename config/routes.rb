Rails.application.routes.draw do
  # get 'articles/index'
  # get 'articles/show'
  # get 'articles/new'
  # get 'articles/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'index', to:'articles#index'
  # get 'show', to:'articles#show'
  # get 'new, to:'articles#new'
  # get 'articles', to:'articles#index', as: 'articles'
  # post 'articles', to: 'articles#create'
  # get 'articles/new', to: 'articles#new', as: 'new_article'
  # get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  # get 'articles/:id', to: 'articles#show', as: 'article'
  # patch 'articles/:id', to: 'articles#update'
  # delete 'articles/:id', to: 'articles#destroy'
  
  get 'authors', to:'authors#index', as: 'authors'
  post 'authors', to: 'authors#create'
  get 'authors/new', to: 'authors#new', as: 'new_author'
  get 'authors/:id/edit', to: 'authors#edit', as: 'edit_author'
  get 'authors/:id', to: 'authors#show', as: 'author'
  patch 'authors/:id/verify', to: 'authors#verify', as: 'verify_author'
  patch 'authors/:id', to: 'authors#update'
  delete 'authors/:id', to: 'authors#destroy'

  resources :articles do
    resources :comments
  end

  root to: 'authors#index'
end
