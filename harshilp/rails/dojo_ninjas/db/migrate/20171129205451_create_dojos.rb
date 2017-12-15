class CreateDojos < ActiveRecord::Migration
  def change
    create_table :dojos do |t|
      t.string :city
      t.string :name
      t.string :state

      t.timestamps null: false
    end
  end
end
