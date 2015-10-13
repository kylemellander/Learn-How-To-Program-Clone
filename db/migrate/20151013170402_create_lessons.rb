class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :content
      t.integer :sort_order

      t.timestamps
    end
  end
end
