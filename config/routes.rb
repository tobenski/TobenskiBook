Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'static_pages#home'

  authenticated :user do
    root to: 'static_pages#home', as: :authenticated_root
    get 'static_pages/home', as: 'home'
  end
  root to: redirect('/users/sign_in')
end
