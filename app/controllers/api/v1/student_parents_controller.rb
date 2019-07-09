module Api
    module V1
  
      class StudentParentsController < ApplicationController
  
            before_action :find_student_parent, only: [:show, :update]
  
            def index
              @student_parents = StudentParent.all
              render json: @student_parents
            end 
  
            def show
              render json: @student_parent
            end

            
  
  
            def create
                @student_parent = StudentParent.new(student_parent_params)
        
                if @student_parent.valid?
                    @student_parent.save
                  render json: @student_parent
                end
                
              end
              

  
  
            private
            def find_student_parent
                @student_parent = StudentParent.find(params[:id])
            end
  
  
            def student_parent_params
                params.require(:student_parent).permit(:student_id, :parent_id)
            end
        end
      end
    end
  