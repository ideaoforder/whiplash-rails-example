class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :id
      t.string :sku
      t.string :title
      t.string :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :quantity
      t.decimal :weight
      t.integer :exp_quantity
      t.string :originator
      t.integer :originator_id
      t.boolean :available
      t.string :image_file_name
      t.datetime :image_updated_at
      t.string :image_originator_url
      t.string :vendor
      t.decimal :price
      t.boolean :media_mail
      t.boolean :packaging
      t.decimal :length
      t.decimal :width
      t.decimal :height

      t.timestamps
    end
  end
end
