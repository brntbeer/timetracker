class AddTimestampToInvoices < ActiveRecord::Migration
  def self.up
    add_column :invoices, :timestamp, :integer, :null => :false
  end

  def self.down
    remove_column :invoices, :timestamp
  end
end
