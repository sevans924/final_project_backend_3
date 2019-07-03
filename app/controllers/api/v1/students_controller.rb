module Api
  module V1

    class StudentsController < ApplicationController

          before_action :find_student, only: [:show, :edit, :update]

          def index
            @students = Student.all
            render json: @students
          end 

          def show
            render json: @student
          end

          def edit

          end


          def create
              @student = Student.new(student_params)
      
              if @student.save?
                render json: @student
              end
              
            end
            
          def update
              @student.update(student_params)
              render json: @student
          end

          
            
      private
            def find_student
              @student = Student.find(params[:id])
          end


          def student_params
              params.require(:student).permit(:first_name, :last_name, :email, :phone, :password, :counselor_id)
          end

    end
  end
end
