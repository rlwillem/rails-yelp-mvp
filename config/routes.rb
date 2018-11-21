Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:update, :delete] do
    resources :reviews, only: [:create, :new]
  end
  resources :reviews, only: [:show, :edit, :index]
end
