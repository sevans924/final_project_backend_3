Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :students, :parents, :counselors, :check_ins, :student_parents
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      get '/student_plan', to: 'check_ins#student_plan', as: :student_plan
      get '/student_check_in', to: 'check_ins#student_check_in', as: :student_check_in
      get '/find_my_students/:id', to: 'counselors#find_my_students', as: :find_my_students
      get '/find_my_counselor/:id', to: 'students#find_my_counselor', as: :find_my_counselor
      get '/find_student_checks/:id', to: 'counselors#find_student_checks', as: :find_student_checks
      get '/find_my_checks/:id', to: 'students#find_my_checks', as: :find_my_checks
      get '/find_my_plans/:id', to: 'students#find_my_plans', as: :find_my_plans
      get '/find_join/:id', to: 'parents#find_join', as: :find_join
    end
  end
end
