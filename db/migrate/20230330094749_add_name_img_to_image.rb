class AddNameImgToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :name_img, :string, null: false
  end
end
