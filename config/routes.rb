Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]

  resources :users, except: :destroy do
    resources :plants, except: [:index, :show] do
      resources :comments, only: :create
    end
  end

  resources :plants, only: [:show, :index]

end
