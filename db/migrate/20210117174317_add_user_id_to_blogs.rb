class AddUserIdToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :blogs, :user, foreing_key: true
  end
end
