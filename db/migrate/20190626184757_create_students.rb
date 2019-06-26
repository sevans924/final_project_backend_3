class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :password
      t.references :counselor, foreign_key: true

      t.timestamps
    end
  end
end
