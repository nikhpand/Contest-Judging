Rails.application.routes.draw do
    resources :contests do
        resources :categories
    end
    root to: 'visitors#index'
    devise_for :users
    resources :users
    resources :projects
    resources :judges
<<<<<<< HEAD
    resources :gradesheets
=======
    resources :gradesheet
    resources :scores
    
>>>>>>> b37e2d1a208c6b7e3d95aaf92cd3716a464c0061
end
