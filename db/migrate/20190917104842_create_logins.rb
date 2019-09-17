class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.text :UserID
      t.text :Password
      t.text :PeerID
      t.text :UserName
      t.text :Icon
      t.integer :Ch_notification
      t.text :CallID

      t.timestamps
    end
  end
end
