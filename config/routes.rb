Rails.application.routes.draw do
 get "/info", to: 'personal_info#info'
 get "/info1", to: 'personal_info#info1'
 get "/info2", to: 'personal_info#info2'
 get "/contacts", to: 'personal_info#index'
 get "/contacts/new", to: 'personal_info#new'
 get "/contacts/:id", to: 'personal_info#show'
 post "/contacts", to: 'personal_info#create'
 get "/contacts/:id/edit", to: 'personal_info#edit'
 patch "/contacts/:id", to: 'personal_info#update'
 delete "/contacts/:id", to: 'personal_info#destroy'

end