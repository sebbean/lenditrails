LenditRails::Application.routes.draw do

  root 'conferences#europe'
  get '/about' => 'welcome#about'
  get '/sponsors' => 'sponsors#index'
  get '/speakers' => 'speakers#index'
  get '/speakers/sign-up' => 'speakers#sign-up'
  get '/speakers/thank-you' => 'speakers#thank-you'
  get '/terms-of-use' => 'welcome#terms-of-use'

  # See all redirects in WelcomeController
  # 301 redirects from old WP site
  get '/speaker' => 'welcome#go_to_speakers'
  get '/speaker/:id' => 'welcome#go_to_speakers'
  get '/2014' => 'welcome#go_to_root'
  get '/lendit-2014-san-francisco-presentations' => 'welcome#go_to_about'
  get '/presentations/Renaud-Laplanche-Lending-Club-LendIt-2014-keynote.pdf' => 'welcome#renaud_2014_keynote'
  get '/presentations/Peter-Renton-Lend-Academy-LendIt-2014-presentation.pdf' => 'welcome#renton_2014_deck'
  get '/presentations/Sam-Hodges-Funding-Circle-LendIt-2014-presentation.pdf' => 'welcome#hodges_2014_deck'
  get '/presentations/Mike-Cagney-SoFi-LendIt-2014-presentation.pdf' => 'welcome#cagney_2014_deck'
  get '/presentations/Michael-Barr-LendiIt-2014.pdf' => 'welcome#barr_2014_deck'
  get '/presentations/Chales-Moldow-Foundation-Capital-LendIt-2014.pdf' => 'welcome#moldow_2014_deck'
  get '/presentations/Securitization-Panel-LendIt-2014.pdf' => 'welcome#securitization_panel_2014_deck'


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
