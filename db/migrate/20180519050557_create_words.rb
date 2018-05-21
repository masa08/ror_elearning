class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.text :content
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
