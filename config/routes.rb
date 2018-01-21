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
#      countries GET    /countries(.:format)                         countries#index
#                POST   /countries(.:format)                         countries#create
#    new_country GET    /countries/new(.:format)                     countries#new
#   edit_country GET    /countries/:id/edit(.:format)                countries#edit
#        country GET    /countries/:id(.:format)                     countries#show
#                PATCH  /countries/:id(.:format)                     countries#update
#                PUT    /countries/:id(.:format)                     countries#update
#                DELETE /countries/:id(.:format)                     countries#destroy
#                DELETE /elements/:id/remove/:scientist_id(.:format) elements#remove_scientist
#                POST   /elements/:id/edit(.:format)                 elements#add_scientist
#                DELETE /elements/:id/remove/:country_id(.:format) elements#remove_country
#                POST   /elements/:id/edit(.:format)                 elements#add_country
#                POST   /scientists/:id/edit(.:format)               scientists#add_element
#

Rails.application.routes.draw do

  root :to => "pages#home"

  resources :countries
  resources :scientists
  resources :elements
  resources :deposits

  post 'elements/:id/edit' => 'elements#add_child'
  delete '/elements/:id/remove/scientist/:scientist_id' => 'elements#remove_scientist'
  delete '/elements/:id/remove/country/:country_id' => 'elements#remove_country'



  post 'scientists/:id/edit' => 'scientists#add_element'
  delete '/scientists/:id/remove/element/:element_id' => 'scientists#remove_element'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
