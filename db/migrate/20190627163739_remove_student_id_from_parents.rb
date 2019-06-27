class RemoveStudentIdFromParents < ActiveRecord::Migration[5.2]
  def change
    remove_reference :parents, :student_id, foreign_key: true
  end
end
