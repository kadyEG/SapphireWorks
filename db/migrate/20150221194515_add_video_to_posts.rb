class AddVideoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :videourl, :string
  end
end
