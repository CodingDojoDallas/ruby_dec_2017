class AddMessageIdToComments < ActiveRecord::Migration
  def up
    add_column :comment, :message_id, :foreign_key
  end

  def down
    remove_column :comment, :message_id
  end
end
