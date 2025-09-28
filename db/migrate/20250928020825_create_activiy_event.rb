class CreateActiviyEvent < ActiveRecord::Migration[8.0]
  def change
    create_table :activiy_events do |t|
      #ActivyID will associate to the the Activiy table activity id
      t.integer "ActivyID"
      #date the task/activy is due
      t.datetime "due_date" 
      #use to track if the task/activity is completed
      t.boolean "is_completed"
      t.timestamps
    end
  end
end
