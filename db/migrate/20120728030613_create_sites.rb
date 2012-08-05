class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name, :null => false

      t.timestamps
    end

    add_index :sites, :name, unique: true
  end
end