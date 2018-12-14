Rails.application.routes.draw do
  devise_for :users
  resources :docs #creation de toutes les ressources, create, delete, update dans routes
  get 'welcome/index'

  authenticated :user do
    root "docs#index",  as: "authenticated_root" #pour les user authentifiés, le root est docs#index
  end

  root 'welcome#index'

 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
