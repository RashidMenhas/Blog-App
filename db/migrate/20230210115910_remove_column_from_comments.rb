class RemoveColumnFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :AuthorId, :integer
    remove_column :comments, :PostId, :integer
  end
end
