class CreateBreaks < ActiveRecord::Migration[6.0]
  def change
    create_table :breaks do |t|
      t.references :work  ,foreign_key: true
      t.integer :breakcount
      t.timestamps
    end
  end
end
