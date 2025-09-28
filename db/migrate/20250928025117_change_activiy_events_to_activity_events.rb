class ChangeActiviyEventsToActivityEvents < ActiveRecord::Migration[8.0]
  def change
    rename_table :activiy_events, :activity_events
  end
end
