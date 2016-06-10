class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer
      t.integer :answer_list_id
      t.timestamps null: false
    end
  end
end
