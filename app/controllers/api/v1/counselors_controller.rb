module Api
    module V1
  
      class CounselorsController < ApplicationController

                before_action :find_counselor, only: [:show, :edit, :update]

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
