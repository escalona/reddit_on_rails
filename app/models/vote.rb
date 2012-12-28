class Vote < ActiveRecord::Base
  attr_accessible :up

  belongs_to :user
  belongs_to :link
end
