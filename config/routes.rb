Stylist::Application.routes.draw do

   root :to => 'questions#open'
   get 'modals/bookmarklet'
end
