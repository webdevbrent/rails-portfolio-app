Rails.application.routes.draw do
  resources :posts, except: [:show, :index]
  get 'blog', to: 'posts#index'
  get 'blog/:id', to: 'posts#show', as: 'blog_show'

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

end
