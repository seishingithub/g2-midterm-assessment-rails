class ChangeColumnUserIdToPostId < ActiveRecord::Migration
  def change
    rename_column :posts, :user_id, :post_id
  end
end