ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.resource :user_session
  
  
  map.resources :pages
  
  map.signup 'signup', :controller => "users", :action => "new"
  map.login 'login', :controller => "user_sessions", :action => "new"
  
  map.root :page
end
