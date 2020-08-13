Rails.application.routes.draw do
  resources :driver_logs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root "driver_logs#index"

end
