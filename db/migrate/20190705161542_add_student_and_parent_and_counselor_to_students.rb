class AddStudentAndParentAndCounselorToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :is_student, :boolean
    add_column :students, :is_parent, :boolean
    add_column :students, :is_counselor, :boolean
  end
end
