class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :comment_upvotes


  def time
    self.created_at.strftime("%B %e, %Y at %r")
  end

end
