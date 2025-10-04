class AddDescriptionToActivityEvent < ActiveRecord::Migration[8.0]
  def change
    add_column :activity_events, :description, :text
  end
end
