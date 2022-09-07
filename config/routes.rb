Rails.application.routes.draw do
  resources :teachers
  resources :students
  # get 'home/index'
  get 'home/about' #route
  root 'home#index' #for homepage

  get "/success", to:"students#success"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end