Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root to: 'posts#index', as: :authenticated_root
    end

    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :users, only: %i[index show edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
