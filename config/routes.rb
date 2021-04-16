Rails.application.routes.draw do

  resources :posts
  get "about" => "public#about", as: :about
  get "blog" => "public#blog", as: :blog
  get "contact" => "public#contact", as: :contact

  root to: "public#homepage"
end
