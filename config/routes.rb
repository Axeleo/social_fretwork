Rails.application.routes.draw do

  root 'home#index'
  resources :job_applications, only: [:create, :destroy]
  resources :muso_imgs
  resources :muso_embeds
  resources :musos
  resources :jobs
  resources :hosts, except: [:index]
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
  delete "/musos/:id/tags", to: 'musos#destroy_tags'

  put '/job_applications/:id/reject', to: 'job_applications#reject'
  put 'jobs/:id/completed', to: 'jobs#mark_job_completed'

  put 'jobs/:id/select_successful_applicant', to: 'jobs#select_successful_applicant'

  get "/host/jobs/past", to: "hosts#old_host_jobs"
  get "/host/jobs", to: "hosts#host_jobs"

  get "/muso/jobs/past", to: "musos#old_muso_jobs"
  get "/muso/jobs", to: "musos#muso_jobs"
  get "/muso/jobs/applied", to: "musos#muso_applied_jobs"

  get '/jobs/:job_id/review', to: 'muso_reviews#review_job'
  post '/jobs/:job_id/review', to: 'muso_reviews#create'
end
