class Message < ActiveRecord::Base
  has_many :remessageables
  has_many :remessagers, through: :remessageables, source: :user
  belongs_to :author, foreign_key: :user_id, class_name: 'User'
end
