class Micropost < ActiveRecord::Base
  attr_accessible :content

  # This is the connection with the user.rb --> has_many :microposts
  belongs_to :user

  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true

  #Gives the right order
  default_scope :order => 'microposts.created_at DESC'
end
