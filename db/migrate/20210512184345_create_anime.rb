class CreateAnime < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :service_id, null: false
      t.integer :year, null: false
      t.timestamps
    end
    add_index :animes, :name, unique: true 
    add_index :animes, :service_id
    add_index :animes, :year
  end

end
