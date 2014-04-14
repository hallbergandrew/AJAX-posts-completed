class Addcomplete < ActiveRecord::Migration
  def change
    add_column :posts, :complete, :boolean, default: false, null: false
  end
end
