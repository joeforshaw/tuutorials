class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name
      t.text :description
      t.integer :technology_category_id

      t.timestamps
    end
  end
end
