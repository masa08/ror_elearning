class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.string :email
      t.string :password
      t.boolean :admin, default: 0

      t.timestamps
    end
  end
end
