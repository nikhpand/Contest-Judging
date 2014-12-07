Rails.application.routes.draw do
  #get 'attachments/show'

  #get 'attachments/create'

    resources :contests do
        resources :categories
        resources :attachments
    end
    root to: 'visitors#index'
    devise_for :users
    resources :users
    resources :projects
    resources :judges
    resources :gradesheet
    resources :scores
    
end
