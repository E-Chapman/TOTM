Rails.application.routes.draw do
  get 'periods/create'
  get 'periods/delete'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :periods do
    resources :period_days
  end
  resources :symptoms
  resources :period_day_symptoms
end
