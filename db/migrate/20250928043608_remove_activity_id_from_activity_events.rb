class RemoveActivityIdFromActivityEvents < ActiveRecord::Migration[8.0]
  def change
    remove_column :activity_events, :ActivyID
  end
end
