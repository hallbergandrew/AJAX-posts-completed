class EditTablenames < ActiveRecord::Migration
  def change
    rename_table :create_users, :users
    rename_table :create_posts, :posts
  end
end
