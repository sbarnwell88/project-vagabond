class AddPostIdToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :post_id, :integer
  end
end
