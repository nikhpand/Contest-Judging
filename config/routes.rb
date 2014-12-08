Rails.application.routes.draw do
  #get 'attachments/show'

  #get 'attachments/create'

    resources :contests do
        resources :categories
        resources :attachments
        resources :projects
    end
    root to: 'visitors#index'
    devise_for :users
    resources :users
    resources :judges
    resources :questions
    resources :question_types
    resources :gradesheets
    resources :scores
end
