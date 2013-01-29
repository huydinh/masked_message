class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_phone, :null => false
      t.integer :user_id
      t.text :content, :null => false
      t.string :code, :null => false, :unique => true
      t.string :receiver_phone, :null => false

      t.timestamps
    end
  end
end
