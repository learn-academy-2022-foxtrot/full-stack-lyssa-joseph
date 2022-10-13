Rails.application.routes.draw do
  get 'blogs' => 'main#index'
  get 'blogs/new' => 'main#new', as: 'new_blog'
  get 'blogs/:id' => 'main#show', as: 'blog'
  post 'blogs' => 'main#create'
  get 'blogs/:id/edit' => 'main#edit', as: 'edit_blog'
  patch 'blogs/:id' => 'main#update'
  delete 'blogs/:id' => 'main#destroy'
  
  root 'main#index'
end
