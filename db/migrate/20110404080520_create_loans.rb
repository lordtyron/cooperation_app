class CreateLoans < ActiveRecord::Migration
  def self.up
    create_table :loans do |t|
      t.string :kind
      t.integer :user_id
      t.decimal :amount
      t.integer :installment
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :loans
  end
end
