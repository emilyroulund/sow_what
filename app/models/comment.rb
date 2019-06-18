class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :comment_upvotes

  
end
