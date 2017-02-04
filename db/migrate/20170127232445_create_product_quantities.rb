class CreateProductQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :product_quantities do |t|
      t.references :product, foreign_key: true
      t.integer :quantity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
