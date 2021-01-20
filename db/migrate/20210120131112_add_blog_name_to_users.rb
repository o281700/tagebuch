class AddBlogNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :blogname, :string, null: false
  end
end
