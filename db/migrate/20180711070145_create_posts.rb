class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :finish
      t.string :nama

      t.timestamps
    end
  end
end
