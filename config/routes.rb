Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: "users/sessions" ,
    confirmations: "users/confirmations"
  }
  
  resources :topics

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'topics#index'

  resource :setting do
    member do
      get :account
      get :password
      get :profile
      get :reward
    end
  end
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
