Rails.application.routes.draw do

  get '/qtp/qtpintroduction' => 'qtp#qtpintroduction'
  get '/qtp/recordingwaysandrunmodes' => 'qtp#recordingwaysandrunmodes'
  get '/qtp/debugginganditsoptions' => 'qtp#debugginganditsoptions'
  get '/qtp/objectspropertiestypes' => 'qtp#objectspropertiestypes'
  get '/qtp/vbscript' => 'qtp#vbscript'
  get '/qtp/actionsfunctions' => 'qtp#actionsfunctions'
  get '/qtp/datatableparameterization' => 'qtp#datatableparameterization'
  get '/qtp/checkpoints' => 'qtp#checkpoints'
  get '/qtp/smartidentificationsynchronization' => 'qtp#smartidentificationsynchronization'
  get '/qtp/regularexpressions' => 'qtp#regularexpressions'
  get '/qtp/virtualobjectsfilesystemobjects' => 'qtp#virtualobjectsfilesystemobjects'
  get '/qtp/recoveryscenarios' => 'qtp#recoveryscenarios'
  get '/qtp/usefulsnippets' => 'qtp#usefulsnippets'
  get '/qtp/batchtests' => 'qtp#batchtests'
  get '/qtp/descriptive' => 'qtp#descriptive'
  get '/qtp/frameworks' => 'qtp#frameworks'
  get '/qtp/selenium' => 'qtp#selenium'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'qtp#qtpintroduction'

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
