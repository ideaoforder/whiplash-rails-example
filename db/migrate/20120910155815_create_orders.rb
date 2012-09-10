class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :id
      t.string :order_orig
      t.string :shipping_company
      t.string :shipping_address_1
      t.string :shipping_address_2
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_zip
      t.string :shipping_country
      t.string :shipping_phone
      t.string :email
      t.string :ship_method
      t.string :ship_actual_cost
      t.string :shipped_on
      t.string :tracking
      t.text :ship_notes
      t.datetime :created_at
      t.datetime :updated_at
      t.string :shipping_name
      t.string :req_ship_method_code
      t.string :req_ship_method_price
      t.boolean :tracking_sent
      t.boolean :originator_notified
      t.string :originator
      t.integer :originator_id
      t.integer :status
      t.decimal :ship_3rdparty_cost
      t.text :public_note
      t.boolean :gift
      t.boolean :billed
      t.string :ship_3rdparty_account
      t.string :ship_3rdparty_zip
      t.string :ship_3rdparty_country

      t.timestamps
    end
  end
end
