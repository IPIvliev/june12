class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.string :size
      t.integer :amount
      t.integer :user_id
      t.boolean :paid

      t.timestamps
    end
  end
end
