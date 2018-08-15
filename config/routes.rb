Rails.application.routes.draw do
  resources :job_applications, only: [:create, :delete]
  resources :muso_imgs
  resources :muso_embeds
  resources :muso_reviews
  resources :musos
  resources :jobs
  resources :hosts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login/musos', to: 'logins#musos'
  get '/login/hosts', to: 'logins#hosts'
  get '/login', to: 'logins#muso_or_host_login'
  delete '/session', to: 'logins#delete_session'

  post '/login/musos', to: 'logins#muso_session'
  post '/login/hosts', to: 'logins#host_session'
  post "/musos/:id/tags", to: 'musos#create_tags'

  get '/signup', to: 'logins#muso_or_host_signup'
  get '/musos/new', to: 'musos#new'
  get '/hosts/new', to: 'hosts#new'
  get '/hosts', to: 'hosts#index'
  post '/hosts', to: 'hosts#create'
  post '/musos', to: 'musos#create'

  

end

