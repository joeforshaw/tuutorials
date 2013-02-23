class CreateAppliedTags < ActiveRecord::Migration
  def change
    create_table :applied_tags do |t|
      t.integer :technology_id
      t.integer :tag_id
      t.timestamps
    end
  end
end
