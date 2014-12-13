Rails.application.routes.draw do
    resources :contests do
        resources :categories
        resources :attachments
        resources :projects
    end
    post '/contests/:contest_id/categories/:id/attach', to: 'categories#attach', :as => :attach
    root to: 'visitors#index'
    devise_for :users
    resources :users
    resources :projects
    resources :judges
    resources :questions
    resources :question_types
    resources :gradesheets
    resources :scores
end
