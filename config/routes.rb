Rails.application.routes.draw do
  get 'reviews/content'

  get 'reviews/rating'

  # get 'restaurant/index'

  # get 'restaurant/show'

  # get 'restaurant/new'

  # get 'restaurant/create'

  # get 'restaurant/edit'

  # get 'restaurant/update'

  # get 'restaurant/destroy'

  get 'pages/index'
  root to: "pages#index"
  resources :restaurants do
    resources :reviews, only: [ :new, :create, :index ]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
