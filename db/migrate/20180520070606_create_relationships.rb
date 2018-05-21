class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.references :followed
      t.references :follower
      t.timestamps
    end
    add_foreign_key :relationships, :users, column: :followed_id
    add_foreign_key :relationships, :users, column: :follower_id
  end
end
