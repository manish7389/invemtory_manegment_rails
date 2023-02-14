Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "inventories#index"
  resources :inventories do
    resources :items do
      resources :invoices
    end
  end

end
