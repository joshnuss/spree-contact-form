class CreateContactTopics < ActiveRecord::Migration
  def self.up
    create_table :contact_topics do |t|
      t.string :name
      t.string :emails

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_topics
  end
end
