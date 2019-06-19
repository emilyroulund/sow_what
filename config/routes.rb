Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]

  resources :users, except: :destroy do
    resources :plants, except: [:index, :show] do
    end
  end

  resources :comments, only: :create
  resources :plants, only: [:show, :index]
  get '/', to: 'sessions#new'

  resources :plants do
    resources :plant_likes
  end

end
