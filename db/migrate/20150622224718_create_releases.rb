class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.references :user, index: true
      t.references :purchase, index: true
      t.string :confirmation_code

      t.timestamps null: false
    end
    add_foreign_key :releases, :users
    add_foreign_key :releases, :purchases
  end
end
