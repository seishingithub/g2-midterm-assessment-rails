class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comments
      t.integer :post_id

      t.timestamps
    end
    add_index :comments, :post_id
  end
end