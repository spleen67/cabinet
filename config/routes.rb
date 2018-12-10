Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :docs #creation de toutes les ressources, create, delete, update dans routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
