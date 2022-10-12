Rails.application.routes.draw do
  get 'blogs' => 'main#index'
  post 'blogs' => 'main#create'
  get 'blogs/new' => 'main#new', as: 'new_blog'
  get 'blogs/:id' => 'main#show', as: 'blog'
  delete 'blogs/:id' => 'main#destroy'

  root 'main#index'
end
