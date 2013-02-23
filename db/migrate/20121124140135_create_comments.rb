class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :tutorial_id
      t.integer :user_id
      t.integer :reply_to

      t.timestamps
    end
  end
end
