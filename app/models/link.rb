class Link < ActiveRecord::Base
  self.per_page = 25

  belongs_to :user
  has_many :comments
  has_many :votes
  attr_accessible :title, :url
end
