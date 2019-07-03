Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :students, :parents, :counselors, :check_ins
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      get '/student_plan', to: 'check_ins#student_plan', as: :student_plan
      get '/student_check_in', to: 'check_ins#student_check_in', as: :student_check_in
      get '/find_my_students1', to: 'counselors#find_my_students1', as: :find_my_students1
      get '/find_my_students2', to: 'counselors#find_my_students2', as: :find_my_students2
      get '/find_my_checks1', to: 'counselors#find_my_checks1', as: :find_my_checks1
      get '/find_my_checks2', to: 'counselors#find_my_checks2', as: :find_my_checks2
    end
  end
end
