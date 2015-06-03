class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :product, index: true
      t.references :invoice, index: true
      t.integer :quantity

      t.timestamps null: false
    end
    add_foreign_key :purchases, :products
    add_foreign_key :purchases, :invoices
  end
end
