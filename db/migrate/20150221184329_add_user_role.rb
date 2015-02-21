class AddUserRole < ActiveRecord::Migration
  def change
    change_table :users do |t|

      # True if user is authorized by admin
      t.boolean :authorized , :nil => false
    end
  end
end
