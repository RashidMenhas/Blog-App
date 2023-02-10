class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :Title
      t.text :Text
      t.datetime :UpdatedAt
      t.datetime :CreatedAt
      t.integer :CommentsCounter
      t.integer :LikesCounter

      t.timestamps
    end
  end
end
