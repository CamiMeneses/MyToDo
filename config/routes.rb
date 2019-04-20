Rails.application.routes.draw do
  devise_for :users
  delete '/users/:id/remove_user',to: 'users#destroy', as: 'remove_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users, only: [:show]do
    resources :lists do
      resources :tasks
    end
  end

end
