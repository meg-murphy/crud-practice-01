Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get "recipes/index", to: "recipes#index"

 get "recipes/new", to: "recipes#new"
 post "recipes/create", to: "recipes#create"

 get "recipes/edit/:id", to: "recipes#edit"
 patch "recipes/update/:id", to: "recipes#update"

 get "recipes/:id", to: "recipes#show"

 destroy "recipes/:id", to: "recipes#destroy"

end
