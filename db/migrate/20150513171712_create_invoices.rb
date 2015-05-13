class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :product, index: true
      t.string :customer_name
      t.integer :customer_phone
      t.integer :invoice_number
      t.text :customer_address

      t.timestamps null: false
    end
    add_foreign_key :invoices, :products
  end
end
