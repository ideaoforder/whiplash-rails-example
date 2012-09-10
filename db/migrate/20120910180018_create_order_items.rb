class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :id
      t.integer :order_id
      t.string :sku
      t.string :description
      t.integer :quantity
      t.decimal :price
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :unshippable
      t.string :originator_id
      t.integer :item_id
      t.boolean :available
      t.boolean :picked
      t.boolean :packed
      t.boolean :packaging

      t.timestamps
    end
  end
end
