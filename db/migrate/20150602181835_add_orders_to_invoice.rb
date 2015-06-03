class AddOrdersToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :purchase, :text
  end
end
