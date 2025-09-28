class AddActivityRefToActivityEvent < ActiveRecord::Migration[8.0]
  def change
    add_reference :activity_events, :activity, null: false, foreign_key: true
  end
end
