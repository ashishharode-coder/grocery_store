Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :sellers, controllers: {
    sessions: 'sellers/sessions'
  }

  get 'dashboard' => 'dashboard#index'

  root 'dashboard#index'

  namespace :vendor do
    get 'dashboard' => 'dashboard#index'
    resources :shops
  end
end