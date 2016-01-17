class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, :handle, :email, :password, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  before_save { self.email = email.downcase }
end
