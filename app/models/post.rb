class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  validates_presence_of :title , :body # Insure that post has a title and body
end
