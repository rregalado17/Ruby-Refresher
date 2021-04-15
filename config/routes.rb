Rails.application.routes.draw do
  get 'welcome/home'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/features'
  resources :posts
  root to: "public#homepage"
end
