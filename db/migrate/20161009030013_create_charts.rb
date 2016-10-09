class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.integer :currency_id
      t.date :date
      t.decimal :start_price
      t.decimal :high_price
      t.decimal :low_price
      t.decimal :end_price

      t.timestamps null: false
    end
  end
end
