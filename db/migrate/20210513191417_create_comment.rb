class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :username, null: false 
      t.text :body, null: false 
      t.integer :episode_id, null: false
      t.timestamps
    end
    add_index :comments, :episode_id
  end
end
