LenditRails::Application.routes.draw do


  root 'welcome#home'

  get '/about' => 'welcome#about'
  get '/speakers' => 'speakers#index'
  get '/sponsors' => 'sponsors#index'
  get '/speakers/sign-up' => 'speakers#sign-up'
  get '/speakers/thank-you' => 'speakers#thank-you'
  get '/terms-of-use' => 'welcome#terms-of-use'
  get '/videos' => 'videos#go_to_eu14'
  get '/photos', to: redirect("https://www.flickr.com/photos/wemakepictures/sets/72157647005531163/")
  get '/privacy' => 'welcome#privacy'
  get '/live', to: redirect('/videos', status: 301)
  get '/attendees' => 'attendees#go_to_usa15'
  get '/volunteers' => 'welcome#volunteers'
  get '/volunteers/submitted' => 'welcome#volunteers_submitted'
  get '/archives' => 'conferences#index'
  get '/audio' => 'welcome#go_to_libsyn'
  get '/bookhotel', to: redirect('https://aws.passkey.com/g/35613120', status: 301)
  get '/podcasts' => 'podcasts#index'


  # LendIt USA 2015
  get '/nyc' => 'conferences#go_to_usa15'
  get '/usa' => 'conferences#usa15'
  get '/usa/2015/start-up-zone' => 'conferences#usa15_startup'
  get '/usa/2015/sponsors' => 'sponsors#usa15'
  get '/usa/2015/speakers' => 'speakers#usa15'
  get '/usa/2015/agenda' => 'agendas#usa15'
  get '/usa/2015/floorplan' => 'welcome#usa15_floorplan'
  get '/usa/2015/startups' => 'startups#usa15'
  get '/us/2015/exhibitors' => 'exhibitors#usa15'
  get '/usa/2015/attendees' => 'attendees#usa15'
  get '/usa/2015/beijing-invite' => 'conferences#usa15_beijing_invite-update'
  get '/test' => 'conferences#test'

  #LendIt Europe 2014
  get '/europe' => 'conferences#europe'
  get '/europe/2014/photos' => 'photos#eu14'
  get '/europe/2014/attendees' => 'attendees#eu14'
  get '/europe/attendees' => 'attendees#go_to_eu14'
  get '/europe/2014/videos' => 'videos#eu14'
  get '/europe/2014/videos/:id' => 'videos#show_eu14', via: :get, as: :eu14_video
  get '/europe/2014/speakers' => 'speakers#eu14'
  get '/europe/2014/sponsors' => 'sponsors#eu14'


  #LendIt USA 2014
  get '/san-francisco-2014/attendees' => 'attendees#usa14'


  # 301 redirects with GA tracking codes
  get '/sharecast' => 'conferences#sharecast'
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
  # get '/blog', to: redirect("http://blog.lendit.co", status: 301)
  get '/videos-2', to: redirect("/videos", status: 301)


  # 302 redirect to be updated to 301 once Wistia is configured
  get '/event', to: redirect('/about', status: 302)
  get '/event/:id', to: redirect('/about', status: 302)
  get '/lendit2013', to: redirect('/about', status: 302)
  get '/lendit-spring-2014', to: redirect('/about', status: 302)


end
