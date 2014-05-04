class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :show
      t.boolean :work

      t.timestamps
    end
  end
end
