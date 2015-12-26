class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :party_id
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
