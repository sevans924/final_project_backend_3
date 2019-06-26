class CreateCheckIns < ActiveRecord::Migration[5.2]
  def change
    create_table :check_ins do |t|
      t.references :student, foreign_key: true
      t.references :counselor, foreign_key: true
      t.boolean :plan
      t.text :goal
      t.text :signal
      t.text :strategy
      t.text :signal_reflection
      t.text :emotion
      t.text :event
      t.text :reflection

      t.timestamps
    end
  end
end
