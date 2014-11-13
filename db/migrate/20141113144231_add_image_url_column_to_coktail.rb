class AddImageUrlColumnToCoktail < ActiveRecord::Migration
  def change
    add_column :coktails, :image_url, :string
  end
end
