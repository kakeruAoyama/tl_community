class AddIdsToEvaluation < ActiveRecord::Migration[6.1]
  def change
    add_column :evaluations, :user_id, :integer
    add_column :evaluations, :lecture_id, :integer
  end
end
