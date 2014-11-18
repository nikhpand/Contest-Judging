Rails.application.routes.draw do
    resources :contests do
        resources :categories
    end
    root to: 'visitors#index'
    devise_for :users
    resources :users
    resources :projects
end
