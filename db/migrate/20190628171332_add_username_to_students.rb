class AddUsernameToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :username, :string
  end
end
