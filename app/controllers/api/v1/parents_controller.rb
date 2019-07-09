module Api
  module V1

    class ParentsController < ApplicationController

          before_action :find_parent, only: [:show, :edit, :update, :find_join]

        def index
          @parents = Parent.all
          render json: @parents
        end

          def show
            render json: @parent
          end

          def edit

          end

         

          def find_join
            @student_parent = StudentParent.where(parent_id: @parent)
            render json: @student_parent
          end

     


          def create
              @parent = Parent.new(parent_params)
      
              if @parent.valid?
                @parent.save
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
              params.require(:parent).permit(:first_name, :last_name, :email, :phone, :password, :username, :is_student, :is_counselor, :is_parent)
          end
      end
    end
  end
