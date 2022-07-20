Rails.application.routes.draw do
  get 'blogs' => 'home#index', as:'blog'
  get 'blogs/new' => 'home#new', as:'new_blog'
  get 'blogs/:id' => 'home#show', as:'blogs'
  post 'blogs' => 'home#create'
root 'blog#index'
end
