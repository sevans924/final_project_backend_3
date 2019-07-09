require 'pry'

module Api
    module V1
  
      class CounselorsController < ApplicationController

                before_action :find_counselor, only: [:show, :edit, :update, :find_my_students, :find_student_checks]

                def index
                    @counselors = Counselor.all
                    render json: @counselors
                end

                def show
                    render json: @counselor
                end
            
                def edit
                end
            
            
                def create
                    @counselor = Counselor.new(counselor_params)
            
                    if @counselor.valid?
                        @counselor.save
                        render json: @counselor
                    end
                    
                    end
                    
                def update
                    @counselor.update(counselor_params)
                    render json: @counselor
                end

                def find_my_students
                    @students = Student.where(counselor_id: @counselor)
                    render json: @students
                end


                def find_student_checks
                    @checks = CheckIn.where(counselor_id: @counselor, plan: false)
                    render json: @checks
                end


            private

                def find_counselor
                    @counselor = Counselor.find(params[:id])
                end

                def counselor_params
                    params.require(:counselor).permit(:first_name, :last_name, :email, :phone, :password, :username, :is_student, :is_counselor, :is_parent)
                end


            end

        end

    end
