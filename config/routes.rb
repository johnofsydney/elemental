# == Route Map
#
#         Prefix Verb   URI Pattern                                  Controller#Action
#           root GET    /                                            pages#home
#     scientists GET    /scientists(.:format)                        scientists#index
#                POST   /scientists(.:format)                        scientists#create
#  new_scientist GET    /scientists/new(.:format)                    scientists#new
# edit_scientist GET    /scientists/:id/edit(.:format)               scientists#edit
#      scientist GET    /scientists/:id(.:format)                    scientists#show
#                PATCH  /scientists/:id(.:format)                    scientists#update
#                PUT    /scientists/:id(.:format)                    scientists#update
#                DELETE /scientists/:id(.:format)                    scientists#destroy
#       elements GET    /elements(.:format)                          elements#index
#                POST   /elements(.:format)                          elements#create
#    new_element GET    /elements/new(.:format)                      elements#new
#   edit_element GET    /elements/:id/edit(.:format)                 elements#edit
#        element GET    /elements/:id(.:format)                      elements#show
#                PATCH  /elements/:id(.:format)                      elements#update
#                PUT    /elements/:id(.:format)                      elements#update
#                DELETE /elements/:id(.:format)                      elements#destroy
#       deposits GET    /deposits(.:format)                          deposits#index
#                POST   /deposits(.:format)                          deposits#create
#    new_deposit GET    /deposits/new(.:format)                      deposits#new
#   edit_deposit GET    /deposits/:id/edit(.:format)                 deposits#edit
#        deposit GET    /deposits/:id(.:format)                      deposits#show
#                PATCH  /deposits/:id(.:format)                      deposits#update
#                PUT    /deposits/:id(.:format)                      deposits#update
#                DELETE /deposits/:id(.:format)                      deposits#destroy
#                DELETE /elements/:id/remove/:scientist_id(.:format) elements#remove_scientist
# 

Rails.application.routes.draw do
  root :to => "pages#home"

  resources :scientists
  resources :elements
  resources :deposits

  # get '/scientist/:id/delete_association' => 'scientist#delete_association'
  delete '/elements/:id/remove/:scientist_id' => 'elements#remove_scientist'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
