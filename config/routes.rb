Rails.application.routes.draw do
  root "pages#home"
  get 'pages/home', to: 'pages#home'
  
  #resources :recipes
  #get '/recipes', to: 'recipes#index'
  #get '/recipes/new', to: 'recipes#new', as: 'new_recipe' 
  #get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  
  resources :recipes do
    resources :comments, only: [:create]
  end
  
  get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]
  
  get '/login', to: 'sessions#new'
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"  
  
  resources :ingredients, except: [:destroy]
  
  mount ActionCable.server => '/cable'
  get '/chat', to: 'chatrooms#show'
  
  resources :messages, only: [:create]
  
  get '/chapter1', to: 'chapters#chapter1'
  get '/chapter1_1', to: 'chapters#chapter1_1'
  
  get '/chapter2', to: 'chapters#chapter2'
  get '/chapter3', to: 'chapters#chapter3'
  get '/chapter4', to: 'chapters#chapter4'
  get '/chapter5', to: 'chapters#chapter5'
  get '/chapter6', to: 'chapters#chapter6'
  get '/chapter7', to: 'chapters#chapter7'
  get '/chapter8', to: 'chapters#chapter8'
  get '/chapter9', to: 'chapters#chapter9'
  get '/chapter10', to: 'chapters#chapter10'
  get '/chapter11', to: 'chapters#chapter11'
  get '/chapter12', to: 'chapters#chapter12'
  get '/chapter13', to: 'chapters#chapter13'
  get '/chapter14', to: 'chapters#chapter14'
  
end
