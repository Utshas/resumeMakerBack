Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :job_applications
  resources :job_skills
  resources :user_skills
  resources :transactions
  resources :jobs
  resources :cv_templates
  resources :skills
  devise_for :users,
    defaults: { format: :json },
    controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
