Rails.application.routes.draw do
    resources :contests do
        resources :categories
        resources :attachments
        resources :projects
    end
    post '/contests/:contest_id/categories/:id/attach_project', to: 'categories#attach_project'
    root to: 'visitors#index'
    devise_for :users
    resources :users
    resources :judges
    resources :questions
    resources :question_types
    resources :gradesheets
    resources :scores
end
