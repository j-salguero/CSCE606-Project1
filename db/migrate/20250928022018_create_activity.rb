class CreateActivity < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      #Migration will auto create primary index
      #Activity is the name of the Activity
      t.string "ActivityName"
      #Summary of the Activity
      t.text "Description"
      #Category of Activity to group certian Activity.
      t.integer "ActivityType"
      t.timestamps
    end
  end
end
