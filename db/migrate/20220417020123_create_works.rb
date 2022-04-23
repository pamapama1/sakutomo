class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string    :start_time
      t.string    :end_time
      t.string    :work_time
      t.string    :break_start_time
      t.string    :break_end_time
      t.string    :break_time
      t.integer :evaluation
      t.references :user

      t.timestamps
    end
  end
end
