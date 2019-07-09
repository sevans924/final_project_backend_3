class AddStudentAndParentAndCounselorToParents < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :is_student, :boolean
    add_column :parents, :is_parent, :boolean
    add_column :parents, :is_counselor, :boolean
  end
end
