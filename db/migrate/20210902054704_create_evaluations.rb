class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.integer :overall
      t.integer :understandability
      t.integer :usefulness
      t.integer :easy
      t.integer :assignment

      t.timestamps
    end
  end
end