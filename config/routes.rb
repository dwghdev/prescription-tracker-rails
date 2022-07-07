Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "prescriptions", to: "prescriptions#show_all", as: "all_prescriptions"

  resources :medicines, :specializations

  resources :doctors do
    resources :prescriptions
  end

end
