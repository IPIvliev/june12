class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :totalprice,           :precision => 9, :scale => 2
      t.text :line_items, :limit => 5000
      t.integer :user_id
      t.boolean :paid, :default => false

      t.timestamps
    end
  end
end
