class CreateTaskPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :task_posts do |t|
      t.integer :finish_mark
      t.string :name

      t.timestamps
    end
  end
end
