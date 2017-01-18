Rails.application.routes.draw do
 get "/info", to: 'personal_info#info'
 get "/info1", to: 'personal_info#info1'
 get "/info2", to: 'personal_info#info2'
 get "/all_contacts", to: 'personal_info#all_contacts'
end