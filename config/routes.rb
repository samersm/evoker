Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get 'prototypes/playground'

  get 'prototypes/maindesign'

  get 'prototypes/singledesign'

  get 'prototypes/createdesign'

  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  resources :games
  root to: "games#index"

  devise_scope :admin do
    get 'admin', to: 'devise/sessions#new'
  end

  as :user do
    get 'login', to: 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
