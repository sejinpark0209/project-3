Rails.application.routes.draw do
  root "apartments#index"


# get '/patients/:id', to: 'patients#show', as: 'patient'
#
#   get '/users/sign_in', to: 'devise/sessions#new', as: 'new_user_session'
#   post '/users/sign_in', to: 'devise/sessions#create', as: 'user_session'
#   delete '/users/sign_out', to: 'devise/sessions#destroy', as: 'destroy_user_session'
#   get '/users/password/new', to: 'devise/passwords#new', as: 'new_user_password'
#   get '/users/pssword/edit', to: 'devise/passwords#edit', as: 'edit_user_password'
#   patch '/users/pssword', to: 'devise/passwords#update', as: 'user_password'
#   put '/users/pssword', to: 'devise/passwords#update', as: 'user_password'
#   post '/users/pssword', to: 'devise/passwords#update', as: 'user_password'
#   get 'users/'

  devise_for :users


  get '/apartments', to: 'apartments#index', as: 'apartments'
  post '/apartments', to: 'apartments#create'

  get '/apartments/new', to: 'apartments#new', as: 'new_apartment'
  get '/apartments/:id/edit', to: 'apartments#edit', as: 'edit_apartment'

  get '/apartments/:id', to: 'apartments#show', as: 'apartment'
  patch '/apartments/:id', to: 'apartments#update'
  put '/apartments/:id', to: 'apartments#update'
  delete '/apartments/:id', to: 'apartments#destroy'

  get '/apartments/:apartment_id/posts', to: 'posts#index', as: 'apartment_posts'
  post '/apartments/:apartment_id/users/:user_id/posts', to: 'posts#create'

  get '/apartments/:apartment_id/users/:user_id/posts/new', to: 'posts#new', as: 'new_apartment_post'
  get '/apartments/:apartment_id/users/:user_id/posts/:id/edit', to: 'posts#edit', as: 'edit_apartment_post'

  get '/apartments/:apartment_id/users/:user_id/posts/:id', to: 'posts#show', as: 'apartment_post'
  patch '/apartments/:apartment_id/users/:user_id/posts/:id', to: 'posts#update'
  put '/apartments/:apartment_id/users/:user_id/posts/:id', to: 'posts#update'
  delete '/apartments/:apartment_id/users/:user_id/posts/:id', to: 'posts#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



# resources :apartments do
#   resources :users, only: [:show] do
#     resources :posts
#   end
# end
