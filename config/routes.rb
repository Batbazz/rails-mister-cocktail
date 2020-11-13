Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[new show create edit destroy] do
    resources :ingredients, only: %i[new index create]
    resources :doses, only: %i[index new create]
  end
  resources :doses, only: %i[destroy]
end
