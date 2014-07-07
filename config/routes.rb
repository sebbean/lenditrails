LenditRails::Application.routes.draw do

  get '/about' => 'welcome#about'
  get '/sponsors' => 'sponsors#index'
  get '/speakers' => 'speakers#index'
  get '/speakers/sign-up' => 'speakers#sign-up'
  get '/thank-you' => 'welcome#thank-you'
  get '/register' => 'welcome#register'
  root 'conferences#europe'

  # See all redirects in WelcomeController
  # 301 redirects from old WP site
  get '/event' => 'welcome#go_to_root'
  get '/event/:id' => 'welcome#go_to_root'
  get '/speaker' => 'welcome#go_to_speakers'
  get '/speaker/:id' => 'welcome#go_to_speakers'
  get '/2014' => 'welcome#go_to_root'
  get '/lendit-spring-2014' => 'welcome#go_to_root'
  get '/lendit2013' => 'welcome#go_to_root'
  get '/lendit-2014-san-francisco-presentations' => 'welcome#go_to_root'

  # 302 redirect to be updated to 301 once Wistia is configured
  get '/videos', to: redirect("http://lendit.tv", status: 302)
  get '/videos-2', to: redirect("http://lendit.tv", status: 302)

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
