class AddOrdersToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :orders, :text
  end
end
