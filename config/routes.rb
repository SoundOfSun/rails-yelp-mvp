Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants do
    collection do # collection => no restaurant id in URL
      get 'top', to: "restaurants#top"
      # RestaurantsController#top
    end
    resources :reviews, only: [ :new, :create ]
  end
end
