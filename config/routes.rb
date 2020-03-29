Rails.application.routes.draw do
  get "static/index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :items, only: [:index]
    get "getNavItems", to: "core_topics#get_nav_items"
    resources :core_topics, only: [:index]
    resources :examples, only: [:index]
  end
  get "*other", to: "static#index"
end
