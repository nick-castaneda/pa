class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.string :comment
      t.string :link
      t.references :user, index: true, foreign_key: true
      t.references :transcript, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
