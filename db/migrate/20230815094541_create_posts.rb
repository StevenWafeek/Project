class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :author_id # Foreign key to users table
      t.timestamps
    end

    add_foreign_key :posts, :users, column: :author_id
    add_index :posts, :author_id
  end
end