Rails.application.routes.draw do
  get 'blogs' => 'home#index', as:'blog'
  get 'blogs/:id' => 'home#show', as:'blogs'
root 'blog#index'
end
