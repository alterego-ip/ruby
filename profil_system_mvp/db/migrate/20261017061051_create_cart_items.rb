class CreateCartItems < ActiveRecord::Migration[7.2]
  def change
    create_table :cart_items do |t|
      t.references :product, null: false, foreign_key: true
      t.string :title
      t.decimal :price
      t.integer :quantity
      t.jsonb :configuration_details

      t.timestamps
    end
  end
end
