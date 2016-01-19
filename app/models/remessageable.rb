class Remessageable < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  belongs_to :remessageable, polymorphic: true
end
