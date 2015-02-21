class AddUserToPost < ActiveRecord::Migration
  def change

      change_table :posts do |t|

      # Creating column with foriegn key
      t.references :user
    end
  end
end
