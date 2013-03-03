Stylist::Application.routes.draw do

   root :to => 'questions#home'
   get 'modals/bookmarklet'
   get 'modals/image_picker'
   get 'answers/vote'
   resources :questions do
     resources :answers
   end
   
end
