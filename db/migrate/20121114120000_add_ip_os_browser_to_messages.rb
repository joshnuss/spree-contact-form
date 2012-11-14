class AddIpOsBrowserToMessages < ActiveRecord::Migration
  def change
    change_table(:messages) do |t|
      t.string :ip_address, :operating_system, :browser
    end
  end
end
