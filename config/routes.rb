Rails.application.routes.draw do
    #Membership 
    devise_scope :user do
      get 'student-sign-in', to: 'devise/sessions#new'
      get 'student-sign-up', to: 'devise/registrations#new', as: "new_user_registration"
      delete 'deconnecter',  to: "devise/sessions#destroy", as: "destroy_user_session_path"
    end

    devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homepage#index"
end
