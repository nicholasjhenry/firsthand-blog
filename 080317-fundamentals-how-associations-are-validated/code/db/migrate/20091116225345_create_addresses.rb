class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :account_id
      t.string :street
      t.string :city
      t.string :state_province
      t.string :zip_postal_code

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
