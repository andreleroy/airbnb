Rails.application.routes.draw do
  get 'photos/index'
  devise_for :users
  root to: 'listings#index'
  resources :listings, only: [:index, :show, :new, :create] do
    resources :photos, only: [ :create, :destroy, :index ]
    resources :bookings, only: [ :new, :create, :edit, :update]
  end
  resources :bookings, only: [ :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#              photos_index GET    /photos/index(.:format)                                                                  photos#index
#          new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                           PUT    /users/password(.:format)                                                                devise/passwords#update
#                           POST   /users/password(.:format)                                                                devise/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                           PUT    /users(.:format)                                                                         devise/registrations#update
#                           DELETE /users(.:format)                                                                         devise/registrations#destroy
#                           POST   /users(.:format)                                                                         devise/registrations#create
#                      root GET    /                                                                                        listings#index
#            listing_photos GET    /listings/:listing_id/photos(.:format)                                                   photos#index
#                           POST   /listings/:listing_id/photos(.:format)                                                   photos#create
#             listing_photo DELETE /listings/:listing_id/photos/:id(.:format)                                               photos#destroy
#          listing_bookings POST   /listings/:listing_id/bookings(.:format)                                                 bookings#create
#       new_listing_booking GET    /listings/:listing_id/bookings/new(.:format)                                             bookings#new
#      edit_listing_booking GET    /listings/:listing_id/bookings/:id/edit(.:format)                                        bookings#edit
#           listing_booking PATCH  /listings/:listing_id/bookings/:id(.:format)                                             bookings#update
#                           PUT    /listings/:listing_id/bookings/:id(.:format)                                             bookings#update
#                  listings GET    /listings(.:format)                                                                      listings#index
#                           POST   /listings(.:format)                                                                      listings#create
#               new_listing GET    /listings/new(.:format)                                                                  listings#new
#                   listing GET    /listings/:id(.:format)                                                                  listings#show
#                  bookings GET    /bookings(.:format)                                                                      bookings#index
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
