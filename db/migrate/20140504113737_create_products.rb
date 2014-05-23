class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description, :limit => 2000
      t.string :show
      t.boolean :work
      t.integer :price

      t.timestamps
    end
  end
end
