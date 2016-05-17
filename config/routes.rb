Rails.application.routes.draw do
  resources :apts
  resources :appointments
  get 'pages/home' => 'pages/home', as: 'pages_home'

  get 'pages/appointment' => 'pages/appointment', as: 'pages_apt'

  get 'pages/about' => 'pages/about', as: 'pages_about'

  get 'pages/location' => 'pages/location', as: 'pages_location'

  get 'pages/services' => 'pages/services', as: 'pages_services'

  get 'reviews/index' => 'reviews/index', as: 'reviews_index'

  get 'apts' => 'apts', as: 'make_apts'

  devise_for :users
  resources :appoints
  get 'appoints' => 'appoints'
  resources :reviews
  root 'pages#home'
  get "/pages/:page" => "pages#show"
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
