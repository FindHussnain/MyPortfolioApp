Rails.application.routes.draw do
  root 'pages#home'
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
