class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string    :work_time
      t.string    :break_time
      t.integer :evaluation
      t.references :user

      t.timestamps
    end
  end
end
