class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :item_description
      t.decimal :item_price
      t.decimal :purchase_count
      t.references :purchaser, index: true
      t.references :merchant, index: true

      t.timestamps
    end
  end
end
