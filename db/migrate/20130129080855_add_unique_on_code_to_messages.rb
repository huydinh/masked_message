class AddUniqueOnCodeToMessages < ActiveRecord::Migration
  def change
    add_index :messages, :code, :unique => true
  end
end
