Rails.application.routes.draw do

  get 'generate_patient/index'
  get 'generate_patient', to: 'generate_patient#index'
  root 'home#index'
  get 'home/index'

  get '/get_img/:id' => 'generate_patient#get_img'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
