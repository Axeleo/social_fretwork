Rails.application.routes.draw do
  resources :job_applications
  resources :muso_imgs
  resources :muso_embeds
  resources :muso_reviews
  resources :musos
  resources :jobs
  resources :hosts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
