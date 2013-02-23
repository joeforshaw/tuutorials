class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :name
      t.text :description
      t.string :link
      t.integer :up_votes
      t.integer :down_votes
      t.integer :technology_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
