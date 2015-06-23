class FixTablesAndColumns < ActiveRecord::Migration
  def change
    change_column :invoices, :invoice_number, :string
    change_column :invoices, :customer_phone, :string
    add_column :products, :cost_per_product, :float, default: 0
    add_column :purchases, :confirmation_code, :string
    add_column :purchases, :collected, :boolean, default: false
  end
end
