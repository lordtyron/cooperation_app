class CreateRates < ActiveRecord::Migration
  def self.up
    create_table :rates do |t|
      t.string :kind
      t.string :position
      t.float :percent
      t.datetime :expired_date

      t.timestamps
    end
  end

  def self.down
    drop_table :rates
  end
end
