module Api
  module V1

    class ParentsController < ApplicationController

          before_action :find_parent, only: [:show, :edit, :update]

        

          def show
            render json: @parent
          end

          def edit

          end


          def create
              @parent = parent.new(parent_params)
      
              if @parent.save?
                render json: @parent
              end
              
            end
            
          def update
              @parent.update(parent_params)
              render json: @parent
          end

      private 
          def find_parent
            @parent = Parent.find(params[:id])
          end
          def parent_params
              params.require(:parent).permit(:first_name, :last_name, :email, :phone, :password, student_id)
          end
      end
    end
  end
