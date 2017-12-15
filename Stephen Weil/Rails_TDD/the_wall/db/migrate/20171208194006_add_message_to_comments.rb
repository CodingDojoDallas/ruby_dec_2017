class AddMessageToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :message, index: true, foreign_key: true
  end
end
