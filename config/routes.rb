Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]

  resources :users, except: :destroy do
    resources :plants, except: [:index, :show] do
    end
  end

  resources :comments, only: :create do
    resources :comment_upvotes, only: [:create, :destroy]
  end 
  resources :plants, only: [:show, :index] do
    resources :plant_likes, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end
  get '/', to: 'sessions#new'

end
