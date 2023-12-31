class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :product, null: false, foreign_key: true
      t.references :bill, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :item_total

      t.timestamps
    end
  end
end
