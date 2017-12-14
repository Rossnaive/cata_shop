class AddConfirmableToDevise < ActiveRecord::Migration[5.1]
  def self.up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_index :users, :confirmation_token, unique: true
    execute('UPDATE users SET confirmed_at = NOW()')
  end

  def self.down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
