class AddPictureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :prof_pic_url, :string
  end
end
