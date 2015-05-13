class CreateUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :admin, :boolean, default: false
    add_column :users, :name, :string

    User.create!(name: 'SUPERADMIN',
                 email: 'admin@example.com',
                 admin: true,
                 password: 'password1')

    User.create!(name: 'STAFF',
                 email: 'staff@example.com',
                 admin: false,
                 password: 'password')
  end
end
