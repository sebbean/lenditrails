LenditRails::Application.routes.draw do

  constraints(:host => /lendit-rails-stage.herokuapp.com/) do
    match "/(*path)" => redirect {|params, req| "http://www.lendit-rails-stage.herokuapp.com/#{params[:path]}"},  via: [:get, :post]
  end

  get '/about' => 'welcome#about'
  get '/sponsors' => 'sponsors#index'
  get '/speakers' => 'speakers#index'
  get '/speakers/sign-up' => 'speakers#sign-up'
  get '/speakers/thank-you' => 'speakers#thank-you'
  get '/terms-of-use' => 'welcome#terms-of-use'
  root 'conferences#london'

  # See all redirects in WelcomeController
  # 301 redirects from old WP site
  get '/speaker' => 'welcome#go_to_speakers'
  get '/speaker/:id' => 'welcome#go_to_speakers'
  get '/2014' => 'welcome#go_to_root'
  get '/lendit-2014-san-francisco-presentations' => 'welcome#go_to_about'

  # 302 redirect to be updated to 301 once Wistia is configured
  get '/blog', to: redirect('/', status: 302)
  get '/event', to: redirect('/about', status: 302)
  get '/event/:id', to: redirect('/about', status: 302)
  get '/lendit2013', to: redirect('/about', status: 302)
  get '/lendit-spring-2014', to: redirect('/about', status: 302)
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
