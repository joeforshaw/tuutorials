class CreateTechnologyCategories < ActiveRecord::Migration
  def change
    create_table :technology_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
