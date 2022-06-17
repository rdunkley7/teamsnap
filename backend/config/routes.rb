Rails.application.routes.draw do
  get 'greetings/hello'

  # display all teams
  get '/teams', to: 'teams#list'
  # display single team info
  get '/teams/:id', to: 'teams#index'
  post '/teams', to: 'teams#create'
  get '/gif/:team_name', to: 'teams#gif'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
