Rails.application.routes.draw do
  resources :tasks
  resources :categories, only: [:index]
  resources :users, except: [:index]

  root 'sessions#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  post '/tasks/:id/claim', to: 'tasks#claim', as: 'claim_task'
  post '/tasks/:id/approval', to: 'tasks#approval', as: 'approval_task'
  post '/tasks/:id/completed', to: 'tasks#completed', as: 'completed_task'

  match '*path' => redirect('/404'), via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
