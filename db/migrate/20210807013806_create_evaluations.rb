class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.string :attending
      t.datetime :date
      t.string :competency
      t.float :rating
      t.string :comment
      t.integer :student_id

      t.timestamps
    end
  end
end
