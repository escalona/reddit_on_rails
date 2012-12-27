class Link < ActiveRecord::Base
  self.per_page = 25

  belongs_to :user
  attr_accessible :title, :url
end
