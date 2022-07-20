Rails.application.routes.draw do
  get 'blogs' => 'home#index', as:'blogs'
  post 'blogs' => 'home#create'
  get 'blogs/new' => 'home#new', as:'form'
  get 'blogs/:id' => 'home#show', as:'blog'
root 'blog#index'
end

# I used to pray for times like this to code like this, 
# So I had to, grind like that, to shine like this, in a matter of time I spent on some JumpStart ish. In the back of the Zoom class, Code locked on Git. 
