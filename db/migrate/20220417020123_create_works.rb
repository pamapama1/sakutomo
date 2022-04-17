class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.time    :start_time,            null: false
      t.time    :all_time,              null: false
      t.time    :work_time,             null: false
      t.time    :break_time,            null: false
      t.integer :evaluation,            null: false
      t.references :user,               null: false

      t.timestamps
    end
  end
end
