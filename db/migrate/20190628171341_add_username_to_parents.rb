class AddUsernameToParents < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :username, :string
  end
end
