class CreateWordAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :word_answers do |t|
      t.text :content
      t.integer :word_id
      t.boolean :collect

      t.timestamps
    end
  end
end
