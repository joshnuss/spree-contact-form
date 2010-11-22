Rails.application.routes.draw do
  resource :contact, :controller => 'contact'

  namespace :admin do 
    resources :contact_topics
  end
end
