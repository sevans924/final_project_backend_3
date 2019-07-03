class AddUsernameToCounselors < ActiveRecord::Migration[5.2]
  def change
    add_column :counselors, :username, :string
  end
end
