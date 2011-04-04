class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :position
      t.string :division
      t.string :account_no

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
