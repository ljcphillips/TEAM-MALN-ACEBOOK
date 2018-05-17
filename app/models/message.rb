class Message < ApplicationRecord
  belongs_to :user
  belongs_to :recipient_user, class_name: 'User', foreign_key: 'recipient_user_id'

  def author
    return user
  end
end
