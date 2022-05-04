class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nickname,               null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :sex,                null: false
      t.integer :age,               null: false
      t.timestamps
    end
  end
end
