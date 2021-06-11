Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]

       resources :list_movies, only: [:create, :destroy, :show]

    resources :genres, only: [:show, :index]


     resources :movies, only: [:show, :index]
    resources :lists, only: [:create, :destroy, :show]





        resources :profiles, only: [:create, :destroy, :show]

  end

end