Rails.application.routes.draw do
  get '/lodgings/:lodging_id/lodging_confirmations', to: "lodging_confirmations#index"
  get 'lodging_confirmations/show'
  get 'lodging_confirmations/create'
  get 'lodging_confirmations/update'
  get 'lodging_confirmations/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
