class CreateFilter < ActiveRecord::Migration[5.2]
  def change
    create_table :filters do |t|
      t.integer :filtered_id, null: false 
      t.integer :filter_id, null: false 
      t.timestamps
    end
    add_index :filters, :filter_id
    add_index :filters, :filtered_id
  end
end
