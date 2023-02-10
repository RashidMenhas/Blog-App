class RenameColumnUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :PostCounter, :post_counter
    rename_column :users, :Bio, :bio 
    rename_column :users, :Name, :name
    rename_column :users, :Photo, :photo 

  end
end
