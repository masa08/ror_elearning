class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
    # add_foreign_key :lessons, :users
    # add_foreign_key :lessons, :users
  end
end
