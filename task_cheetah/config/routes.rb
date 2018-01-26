Rails.application.routes.draw do
  resources :tasks
  resources :categories, only: [:index, :show]
  resources :users, except: [:index]

  root 'sessions#new'
  get '/index' => 'categories#index'
  get '/login' => 'sessions#new'
  get '/analytics' => 'users#analytics', as: 'analytics'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/users/:id/pending' => 'users#pending', as: 'pending'
  get '/users/:id/claimed' => 'users#claimed', as: 'claimed'
  get '/users/:id/review' => 'users#review', as: 'review'

  post '/tasks/:id/claim', to: 'tasks#claim', as: 'claim_task'
  post '/tasks/:id/approval', to: 'tasks#approval', as: 'approval_task'
  post '/tasks/:id/completed', to: 'tasks#completed', as: 'completed_task'

  match '*path' => redirect('/404'), via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
