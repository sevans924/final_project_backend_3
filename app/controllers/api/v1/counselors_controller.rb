module Api
    module V1
  
      class CounselorsController < ApplicationController

                before_action :find_counselor, only: [:show, :edit, :update, :find_my_students]

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
            
                    if @counselor.save?
                        render json: @counselor
                    end
                    
                    end
                    
                def update
                    @counselor.update(counselor_params)
                    render json: @counselor
                end

                def find_my_students1
                    @students = Student.where(counselor_id: 1)
                    render json: @students
                end

                def find_my_students2
                    @students = Student.where(counselor_id: 2)
                    render json: @students
                end

                def find_my_checks1
                    @checks = CheckIn.where(counselor_id: 1)
                    render json: @checks
                end

                def find_my_checks2
                    @checks = CheckIn.where(counselor_id: 2)
                    render json: @checks
                end

            private

                def find_counselor
                    @counselor = Counselor.find(params[:id])
                end

                def counselor_params
                    params.require(:counselor).permit(:first_name, :last_name, :email, :phone, :password_digest, :username)
                end


            end

        end

    end
