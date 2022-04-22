class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.time    :start_time,            null: false
      t.time    :end_time,              null: false
      t.time    :work_time,             null: false
      t.time    :break_start_time
      t.time    :break_end_time
      t.time    :break_time
      t.integer :evaluation,            null: false
      t.references :user,               null: false

      t.timestamps
    end
  end
end
