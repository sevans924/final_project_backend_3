class RemovePasswordFromCounselors < ActiveRecord::Migration[5.2]
  def change
    remove_column :counselors, :password, :string
  end
end
