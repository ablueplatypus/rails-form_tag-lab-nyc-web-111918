Rails.application.routes.draw do
  resources :students, only: :index
  get '/students/new', to: 'students#new', as: 'new_student'
  get '/students/:id', to: 'students#show', as: 'student'
  post '/students/new', to: 'students#create'
  # get '/students/:id/edit', to: 'students#edit'

end
