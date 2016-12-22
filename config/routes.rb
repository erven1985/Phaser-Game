Rails.application.routes.draw do
  
  root :to                        => 'welcome#index'

  get '/game' 									=>  'welcome#game'
  
  
  post '/game' 								=>  'welcome#create'


  get  '/show'                    => 'welcome#show'
  
  get 'auth/:provider/callback' 	=> 'sessions#create'
  
  delete 'sign_out'							 	=> 'sessions#destroy', as: 'sign_out'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
