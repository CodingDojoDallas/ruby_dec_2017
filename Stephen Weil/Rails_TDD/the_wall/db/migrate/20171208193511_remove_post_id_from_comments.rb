class RemovePostIdFromComments < ActiveRecord::Migration
  def up
    remove_column :comment, :post_id
  end

  def down
    add_column :comment, :post_id, :foreign_key
  end
end
