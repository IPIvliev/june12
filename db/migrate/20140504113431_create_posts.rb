class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :user_id
      t.text :text, :limit => 4294967295
      t.string :picture
      t.string :slug

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
