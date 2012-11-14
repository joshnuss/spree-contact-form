class AddIpAndUserAgentToMessages < ActiveRecord::Migration
  def change
    change_table(:messages) do |t|
      t.string :ip_address, :user_agent
    end
  end
end
