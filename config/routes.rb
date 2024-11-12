Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  get '/index', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  delete "tasks/:id", to: "tasks#destroy"

  patch '/tasks/:id', to: 'tasks#update', as: :update_task
  get 'tasks/edit/:id', to: 'tasks#edit', as: :edit_task

  get 'tasks/:id', to: 'tasks#show', as: :task
  # root "posts#index"
end
