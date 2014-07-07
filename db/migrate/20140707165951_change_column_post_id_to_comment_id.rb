class ChangeColumnPostIdToCommentId < ActiveRecord::Migration
  def change
    rename_column :comments, :post_id, :comment_id
  end
end

