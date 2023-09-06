class CreateUsers < ActiveRecord::Migration[7.0]
def change
  create_table :users do |t|
    t.string :name
    t.string :password
    t.string :email
    t.integer :role, default: 0  # Add default value (0 in this example) for the enum

    t.timestamps
  end

  # Define the enum values for the 'role' attribute
  add_index :users, :role
end
end