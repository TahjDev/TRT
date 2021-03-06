Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api, defaults: { format: :json} do 
      resources :users do 
      end
      resources :watchlists, only: [:create, :destroy]
      resource :session, only: [:create, :destroy] 
      resources :animes, only: [:show, :index]
      resources :episodes, only: [:show]
    end
    root to: 'static_pages#root'
end
