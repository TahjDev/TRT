class CreateEpisode < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :name, null: false 
      t.text :description, null: false
      t.integer :anime_id, null: false 
      t.timestamps
    end
    add_index :episodes, :anime_id
  end
end


