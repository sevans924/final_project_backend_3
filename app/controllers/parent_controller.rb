class ParentController < ApplicationController

private 
    def find_parent
       @parent = Parent.find(params[:id])
    end
    def parent_params
        params.require(:parent).permit(:first_name, :last_name, :email, :phone, :password)
    end
end
