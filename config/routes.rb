WebApp::Application.routes.draw do
  root to: 'static_pages#home'
  
  #get "static_pages/home"
  match 'home'       => 'static_pages#home'
  match 'portfolio'  => 'static_pages#portfolio'
  match 'services'   => 'static_pages#services'
  match 'about'      => 'static_pages#about'
  match 'blog'       => 'static_pages#blog'
  match 'contact'    => 'static_pages#contact'

  resources :authors

  resources :author_sessions, only: [ :new, :create, :destroy ]

  match 'login'  => 'author_sessions#new'
  match 'logout' => 'author_sessions#destroy'
  
  resources :comments
  resources :articles
  resources :tags
  resources :projects
    
end
