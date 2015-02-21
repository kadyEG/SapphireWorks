class AddUserToComment < ActiveRecord::Migration
  def change
      change_table :comments do |t|

        # Removing old columns
        remove_column :comments , "post_id"
        remove_column :comments , "user_id"

        # Creating columns with foriegn keys
        t.references :post
        t.references :user
    end
  end
end
