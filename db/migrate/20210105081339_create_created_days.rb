class CreateCreatedDays < ActiveRecord::Migration[6.0]
  def change
    create_table :created_days do |t|
      t.date :day

      t.timestamps
    end
  end
end
