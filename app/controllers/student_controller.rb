class StudentController < ApplicationController





    def create
        @student = Student.new(student_params)
 
        if @student.valid?
          @student.save
          
        else
         render :new
        end
        
      end
       
      def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        
      end
       
      private


    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :phone, :password)
    end

end
