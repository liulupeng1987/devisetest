Rails.application.routes.draw do
  resources :topics

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'topics#index'
  devise_for :users

  resource :setting do
    member do
      get :account
      get :password
      get :profile
      get :reward
    end
  end

end
