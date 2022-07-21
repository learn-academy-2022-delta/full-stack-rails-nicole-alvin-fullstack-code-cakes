Rails.application.routes.draw do
  get 'blogs' => 'home#index', as:'blogs'
  get 'blogs/new' => 'home#new', as:'new_form'
  post 'blogs' => 'home#create'
  get 'blogs/:id' => 'home#show', as:'blog'
  get 'blogs/:id/edit' => 'home#edit', as: 'edit_form'
  patch 'blogs/:id' => 'home#update'
  delete 'blogs/:id' => 'home#destroy', as: 'delete_form'
root 'blog#index'
end

