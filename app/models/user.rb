class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, :handle, :email, :password, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  before_save { self.email = email.downcase }

  has_many :messages
  has_many :remessageables
  has_many :remessages, through: :remessageables, source: :remessageable, source_type: 'Message'
  accepts_nested_attributes_for :messages
  accepts_nested_attributes_for :remessages
end
