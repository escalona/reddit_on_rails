class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :link
  attr_accessible :message, :user_id, :link_id
end
