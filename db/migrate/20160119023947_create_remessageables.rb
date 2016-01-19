class CreateRemessageables < ActiveRecord::Migration
  def change
    create_table :remessageables do |t|
      t.integer :remessageable_id
      t.string :remessageable_type
      t.string :quote
      t.integer :user_id
      t.integer :message_id
      t.timestamps
    end
  end
end
