class CreateService < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name, null: false
    end
    add_index :services, :name, unique: true
  end
end
