Rails.application.routes.draw do
  resources :job_applications, only: [:create, :destroy]
  resources :muso_imgs
  resources :muso_embeds
  resources :muso_reviews
  resources :musos
  resources :jobs
  resources :hosts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'logins#muso_or_host_login'

  get '/login/musos', to: 'logins#musos'
  post '/login/musos', to: 'logins#muso_session'

  get '/login/hosts', to: 'logins#hosts'
  post '/login/hosts', to: 'logins#host_session'

  delete '/session', to: 'logins#delete_session'

  get "/search/musos", to: 'search#muso_results'
  get "/browse/musos", to: 'search#browse_all_musos'
  get '/signup', to: 'logins#muso_or_host_signup'
  
  post "/musos/:id/tags", to: 'musos#create_tags'

  put '/job_applications/:id/reject', to: 'job_applications#reject'
end

