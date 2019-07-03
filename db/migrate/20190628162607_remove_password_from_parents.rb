class RemovePasswordFromParents < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :password, :string
  end
end
