class Link < ActiveRecord::Base
  self.per_page = 25

  belongs_to :user
  has_many :comments
  attr_accessible :title, :url
end
