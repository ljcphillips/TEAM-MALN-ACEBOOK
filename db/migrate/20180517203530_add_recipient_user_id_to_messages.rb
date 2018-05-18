class AddRecipientUserIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :recipient_user_id, :integer
  end
end
