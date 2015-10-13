class AddSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.integer :lesson_id

      t.timestamps
    end
  end
end
