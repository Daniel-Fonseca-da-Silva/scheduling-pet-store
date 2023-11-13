Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :pets
  end
end
