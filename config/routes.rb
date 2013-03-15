Stylist::Application.routes.draw do

  root :to => 'questions#home'
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  match 'retailers', to: 'pages#retailers'
  get 'pages/bookmarklet'
  get 'pages/image_picker'
  get 'pages/login'
  get 'answers/vote'
  resources :users
  resources :questions do
    resources :answers
  end
  
end
