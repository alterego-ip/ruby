class ChangeProductIdNullInCartItems < ActiveRecord::Migration[7.1]
  def change
    change_column_null :cart_items, :product_id, true
  end
end