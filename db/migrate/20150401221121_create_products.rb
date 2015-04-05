class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :product_type
      t.string :vendor
      t.string :image_url
      t.decimal :price

      t.timestamps null: false
    end
  end
end
