Pdtms::Application.routes.draw do
  resources :newsses


  resources :newsfs


  resources :news_secondaries


  resources :news_featureds

  root :to => 'home#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)

  resources :news_categories


  get "home/index"

  get 'home/noticiassecundarias'

  get 'flags/labour'

  get 'flags/education'
  
  get 'flags/sovereignty'

  get 'flags/humanrights'

  get 'flags/foresight' 

  get 'movements/black'

  get 'movements/woman'

  get 'movements/social'

  get 'movements/union'

  get 'movements/retired' 

  get 'powers/executive'

  get 'powers/legislative'

  get 'agenda/events'

  get 'contact/where'

  get 'pdt/executive'

  get 'pdt/history'

  get 'pdt/leaders'

  get 'pdt/municipal'

  get 'pdt/state'

  get 'home/newsfall'

  get 'home/newssall'

 

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
