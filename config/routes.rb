Stylist::Application.routes.draw do

  root :to => 'questions#home'
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  get 'modals/bookmarklet'
  get 'modals/image_picker'
  get 'modals/login'
  get 'answers/vote'
  resources :questions do
    resources :answers
  end
  
end
