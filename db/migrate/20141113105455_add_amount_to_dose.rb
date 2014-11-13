class AddAmountToDose < ActiveRecord::Migration
  def change
    add_column :doses, :amount, :integer
    remove_column :doses, :name
  end


end
