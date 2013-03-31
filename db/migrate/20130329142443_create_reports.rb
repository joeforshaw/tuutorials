class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :report_category_id
      t.integer :reported_object_id
      t.integer :user_id
      t.text    :reason
      t.timestamps
    end
  end
end
