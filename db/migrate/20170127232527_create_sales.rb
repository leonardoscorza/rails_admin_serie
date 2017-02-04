class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.references :client, foreign_key: true
      t.date :sale_date
      t.references :user, foreign_key: true
      t.references :discount, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
