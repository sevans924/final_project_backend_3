class AddStudentAndParentAndCounselorToCounselors < ActiveRecord::Migration[5.2]
  def change
    add_column :counselors, :is_student, :boolean
    add_column :counselors, :is_parent, :boolean
    add_column :counselors, :is_counselor, :boolean
  end
end
