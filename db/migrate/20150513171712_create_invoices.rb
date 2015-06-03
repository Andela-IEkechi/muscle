class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :customer_name
      t.integer :customer_phone
      t.integer :invoice_number
      t.text :customer_address

      t.timestamps null: false
    end
  end
end
