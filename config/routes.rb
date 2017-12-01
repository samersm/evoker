Rails.application.routes.draw do
  get 'prototypes/playground'

  get 'prototypes/maindesign'

  get 'prototypes/singledesign'

  get 'prototypes/createdesign'

  resources :games
  root to: "games#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
