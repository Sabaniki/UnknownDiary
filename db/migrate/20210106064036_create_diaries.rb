class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :title
      #       t.string :text
      t.text :text
      t.integer :created_day_id
      t.boolean :is_edited

      t.timestamps
    end
  end
end
