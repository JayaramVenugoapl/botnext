Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    namespace :api do
      resources :posts, only: [:index]
    end
    match "*unmatched", to: "application#routing_error", via: :all
end
