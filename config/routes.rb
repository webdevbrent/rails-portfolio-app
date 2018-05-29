Rails.application.routes.draw do

  get 'blog', to: 'posts#index', as: 'blog'
  get 'blog/:id', to: 'posts#show', as: 'blog_show'
  resources :posts, except: [:index, :show] do
    member do
      get :toggle_status
    end
  end



  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

end
