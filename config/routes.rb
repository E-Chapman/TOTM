Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :periods do
    resources :period_day_symptoms
      resources :physical_symptoms
      resources :moods
      resources :flows
  end
end
