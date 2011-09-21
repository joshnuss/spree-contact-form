class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.belongs_to :topic
      t.string :name,  :null => false
      t.string :email,    :null => false
      t.string :order_number
      t.text   :message,  :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
