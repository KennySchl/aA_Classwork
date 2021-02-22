class ColumnChange < ActiveRecord::Migration[5.2]
  def change
    add_column :polls, :author_id, :Integer
    add_column :answer_choices, :question_id, :Integer
  end
end
