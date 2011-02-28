class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :serial_number
      t.string :room_number
      t.string :model_number
      t.text :product_description
      t.date :date_installed
      t.date :pat_test
      t.date :renewal_date

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
