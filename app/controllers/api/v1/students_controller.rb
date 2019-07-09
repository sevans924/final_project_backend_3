module Api
  module V1

    class StudentsController < ApplicationController

          before_action :find_student, only: [:show, :edit, :update, :find_my_counselor, :find_my_checks, :find_my_plans]

          def index
            @students = Student.all
            render json: @students
          end 

          def show
            render json: @student
          end

          def edit
            binding.pry
            # newStudentInfo = params
            # @student.update(params)
            # @student.save
          end


          def create
              @student = Student.new(student_params)
      
              if @student.valid?
                @student.save
                render json: @student
              else
                render json: {
                  status: 'error',
                  message: 'Invalid Username or Password',
                  code: 422
                 }
              end
              
            end
            
          def update
              @student.update(student_params)
              render json: @student
          end

          def find_my_counselor
            @counselor = Counselor.where(id: @student.counselor_id)
            render json: @counselor
        end

        def find_my_plans
          @plans = CheckIn.where(student_id: @student.id, plan: true)
          render json: @plans
      end


        def find_my_checks
            @checks = CheckIn.where(student_id: @student.id, plan:false)
            render json: @checks
        end

          
            
      private
            def find_student
              @student = Student.find(params[:id])
          end


          def student_params
              params.require(:student).permit(:first_name, :last_name, :email, :phone, :password, :counselor_id, :username, :is_student, :is_parent, :is_counselor)
          end

    end
  end
end
