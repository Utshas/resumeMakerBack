Rails.application.routes.draw do
  resources :job_applications
  resources :job_skills
  resources :user_skills
  resources :transactions
  resources :jobs
  resources :cv_templates
  resources :users
  resources :skills
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
