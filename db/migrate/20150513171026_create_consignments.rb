class CreateConsignments < ActiveRecord::Migration
  def change
    create_table :consignments do |t|
      t.references :product, index: true
      t.integer :quantity
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :consignments, :products
    add_foreign_key :consignments, :users
  end
end
