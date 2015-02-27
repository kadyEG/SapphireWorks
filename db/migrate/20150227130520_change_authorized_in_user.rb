class ChangeAuthorizedInUser < ActiveRecord::Migration
  def change
	change_column_default :users, :authorized, false
  end
end
