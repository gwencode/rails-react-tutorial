Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :v1, defaults: { format: :json } do
    get 'things', to: 'things#index'
  end
  # Forward all requests to StaticController#index but requests
  # must be non-Ajax (!req.xhr?) and HTML Mime type (req.format.html?).
  # This does not include the root ("/") path.
  get "*page", to: "static#index", constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
  # Forward root to StaticController#index
  root "static#index"
end
