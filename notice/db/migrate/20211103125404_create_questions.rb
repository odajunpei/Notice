class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :member_id
      t.string :user_id
      t.string :body
      t.string :choices1
      t.string :choices2
      t.string :choices3
      t.string :user_answer
      t.timestamps
    end
  end
end
