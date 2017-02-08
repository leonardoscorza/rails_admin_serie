class AddPhotoToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :photo, :string
  end
end
