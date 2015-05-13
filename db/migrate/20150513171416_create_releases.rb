class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.references :product, index: true
      t.integer :quantity
      t.references :user, index: true
      t.integer :invoice_number
      t.integer :customer_number

      t.timestamps null: false
    end
    add_foreign_key :releases, :products
    add_foreign_key :releases, :users
  end
end
