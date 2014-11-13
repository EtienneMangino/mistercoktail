class CreateCoktails < ActiveRecord::Migration
  def change
    create_table :coktails do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
