class Message < ActiveRecord::Base
  attr_accessible :user_phone, :user_id, :content, :code, :receiver_phone

  validates_presence_of :user_phone, :receiver_phone, :content
  validate :code, :uniqueness => true, :presence => true

  belongs_to :user

end
