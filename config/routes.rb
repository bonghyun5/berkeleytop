Top::Application.routes.draw do
  resources :comments


  resources :forum_posts


  resources :directories


  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :users
  resources :contact_infos

  resources :emails

  get "index" => "home#index"

  get  "about" => "home#about"

  get "brothers" => "home#brothers"

  get "rush" => "home#rush"

  get "media" => "home#media"

  get "contact" => "home#contact"

  get "faq" => "home#faq"

  get "officers" => "home#officers"

  get "login" => "home#login"
  
  get "register" => "users#new"
  
  post "login" => "sessions#create"
  
  delete 'logout' => "sessions#destroy"
  
  controller :members_home do
    get 'member/index' => :index
    get 'member/forum' => :forum
    get 'member/events' => :events
    get 'member/directory' => :directory
    get 'member/contact_messages' => :contact_messages
    get 'member/email_signups' => :email_signups
    get 'member/test_bank' => :test_bank
    get 'member/rush_applications' => :rush_applications
  end
  

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
  root to: 'home#index', as: "index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
