class RemoveColumnFromLike < ActiveRecord::Migration[7.0]
  def change
    remove_column :likes, :UpdatedAt, :datetime
    remove_column :likes, :CreatedAt, :datetime
  end
end
