class CreateWatchlist < ActiveRecord::Migration[5.2]
  def change
    create_table :watchlists do |t|
      t.integer :watcher_id, null: false 
      t.integer :watched_id, null: false 
      t.timestamps
    end
    add_index :watchlists, :watched_id
    add_index :watchlists, :watcher_id
    add_index :watchlists, [:watched_id, :watcher_id], unique: true 
  end
end
