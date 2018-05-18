class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :message
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id

      t.timestamps
    end
  end
end
