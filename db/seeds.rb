# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
more_user=[
    {:name => "John Doe", :email => 'johndoe@yahoo.com'},
    {:name => "Jane Doe", :email => 'janedoe@yahoo.com'},
    {:name => "Tom Pain", :email => 'TomPain@yahoo.com'},
]

more_activity=[
    {:ActivityName => "Gym", :Description => 'Lift big, get swole', :ActivityType => '4'},
    {:ActivityName => "Bike", :Description => 'Taken a stroll around the block, or completing in the tour d france', :ActivityType => '4'},
    {:ActivityName => "Homework", :Description => 'An assignment or project', :ActivityType => '2'},
    {:ActivityName => "Test", :Description => 'Study so you won\'t fail', :ActivityType => '2'},
]

more_user.each do |users|
    User.create!(users)
end

more_activity.each do |activities|
    Activity.create!(activities)
end

user1 = User.find_or_create_by!(name:"Bob", email: "bobTodd@yahoo.com")
activities1 = Activity.find_or_create_by!(ActivityName: "Test1", Description: "test test", ActivityType: "2")

ActivityEvent.find_or_create_by!(
    due_date: "12-Aug-1934",
    is_completed: 'false',
    user: user1,
    activity: activities1
)


  
    # t.datetime "due_date"
    # t.boolean "is_completed"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.integer "user_id", null: false
    # t.integer "activity_id", null: false
    # t.index ["activity_id"], name: "index_activity_events_on_activity_id"
    # t.index ["user_id"], name: "index_activity_events_on_user_id"
