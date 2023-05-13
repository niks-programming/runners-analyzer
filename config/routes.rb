Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "welcome#index"

  # Devise users
  devise_for :users, controllers: { registrations: "users/registrations" }
end
