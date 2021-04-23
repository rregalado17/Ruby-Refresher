Rails.application.routes.draw do

  resources :posts
  get "about" => "public#about", as: :about
  get "blog" => "public#blog", as: :blog
  get "contact" => "public#contact", as: :contact

  post "post/view" => "posts#save_post_view", as: :post_view 
  root to: "public#homepage"
end
