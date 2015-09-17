Rails.application.routes.draw do

  # get "users" => "users#index"
  # get "festivals" => "festivals#index"
  # get "meetups" => "meetups#index"

  # get "users/new" => "users#new", as: :new_user
  # get "festivals/new" => "festivals#new", as: :new_festival
  # get "meetups/new" => "meetups#new", as: :new_meetup

  # get "users/:id" => "users#show", as: :user
  # get "festivals/:id" => "festivals#show", as: :festival
  # get "meetups/:id" => "meetups#show", as: :meetup

  # post "users/" => "users#create"
  # post "festivals/" => "festivals#create"
  # post "meetups/" => "meetups#create"

  # get "users/:id/edit" => "users#edit", as: :edit_user
  # get "festivals/:id/edit" => "festivals#edit", as: :edit_festival
  # get "meetups/:id/edit" => "meetups#edit", as: :edit_meetup

  # patch "users/:id" => "users#update"
  # patch "festivals/:id" => "festivals#update"
  # patch "meetups/:id" => "meetups#update"

  # delete "users/:id" => "users#destroy"
  # delete "festivals/:id" => "festivals#destroy"
  # delete "meetups/:id" => "meetups#destroy"

  # get "users" => "users#index"
  # get "users/new" => "users#new" 
  # post "users" => "users#create"

  # get "festivals" => "festivals#index"
  # get "festivals/new" => "festivals#new" 
  # post "festivals" => "festivals#create"

  # get "meetups" => "meetups#index"
  # get "meetups/new" => "meetups#new" 
  # post "meetups" => "meetups#create"


  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :festivals do
      resources :comments 
  end

  resources :users 


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
