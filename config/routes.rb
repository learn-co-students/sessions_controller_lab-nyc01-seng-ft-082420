Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/' => 'sessions#new'
  post '/' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
