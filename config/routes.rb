Spree::Core::Engine.routes.prepend do
  resource :contact, :controller => 'contact'

  namespace :admin do 
    resources :contact_topics
  end	
end