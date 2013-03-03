Stylist::Application.routes.draw do

   root :to => 'questions#open'
   get 'modals/bookmarklet'
   get 'modals/image_picker'
   resources :questions do
     resources :answers
   end
   
end
