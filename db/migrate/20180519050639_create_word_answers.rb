class CreateWordAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :word_answers do |t|
      t.text :content
      t.references :word, foreign_key: true
      t.boolean :correct

      t.timestamps
    end
  end
end
