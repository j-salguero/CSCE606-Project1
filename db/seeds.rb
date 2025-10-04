# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# more_user=[
#     {:name => "John Doe", :email => 'johndoe@yahoo.com'},
#     {:name => "Jane Doe", :email => 'janedoe@yahoo.com'},
#     {:name => "Tom Pain", :email => 'TomPain@yahoo.com'},
# ]

# more_activity=[
#     {:ActivityName => "Gym", :Description => 'Lift big, get swole', :ActivityType => '4'},
#     {:ActivityName => "Bike", :Description => 'Taken a stroll around the block, or completing in the tour d france', :ActivityType => '4'},
#     {:ActivityName => "Homework", :Description => 'An assignment or project', :ActivityType => '2'},
#     {:ActivityName => "Test", :Description => 'Study so you won\'t fail', :ActivityType => '2'},
# ]

# more_user.each do |users|
#     User.create!(users)
# end

# more_activity.each do |activities|
#     Activity.create!(activities)
# end

# user1 = User.find_or_create_by!(name:"Bob", email: "bobTodd@yahoo.com")
# activities1 = Activity.find_or_create_by!(ActivityName: "Test1", Description: "test test", ActivityType: "2")

# ActivityEvent.find_or_create_by!(
#     due_date: "12-Aug-1934",
#     is_completed: 'false',
#     user: user1,
#     activity: activities1
# )


  
    # t.datetime "due_date"
    # t.boolean "is_completed"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.integer "user_id", null: false
    # t.integer "activity_id", null: false
    # t.index ["activity_id"], name: "index_activity_events_on_activity_id"
    # t.index ["user_id"], name: "index_activity_events_on_user_id"
activities = [
  # Work / Professional (ActivityType: 1)
  { name: "Meetings", type: 1, description: "Scheduled or impromptu discussions, brainstorming sessions, or team syncs." },
  { name: "Emails / Communication", type: 1, description: "Writing or responding to emails, messages, or phone calls." },
  { name: "Project Work", type: 1, description: "Tasks directly tied to planning, executing, or delivering work projects." },
  { name: "Research", type: 1, description: "Investigating topics, gathering information, or preparing reports." },
  { name: "Administration", type: 1, description: "Clerical or internal tasks like filing, organizing, or scheduling." },
  { name: "Coding / Development", type: 1, description: "Writing, testing, or debugging software code." },
  { name: "Design", type: 1, description: "Creating visual content such as UX/UI, graphics, or product design." },
  { name: "Writing / Content Creation", type: 1, description: "Authoring articles, reports, marketing content, or documents." },

  # Learning / Personal Development (ActivityType: 2)
  { name: "Studying", type: 2, description: "Focused academic or skill-based learning time." },
  { name: "Reading", type: 2, description: "Reading books, articles, or other learning materials." },
  { name: "Online Courses", type: 2, description: "Taking structured lessons on platforms like Udemy or Coursera." },
  { name: "Language Learning", type: 2, description: "Studying or practicing new languages." },
  { name: "Skill Building", type: 2, description: "Developing specific abilities through practice or training." },
  { name: "Practice / Drills", type: 2, description: "Repetitive exercises to reinforce knowledge or skills." },

  # Health & Fitness (ActivityType: 3)
  { name: "Cardio", type: 3, description: "Aerobic exercises like running, cycling, or swimming." },
  { name: "Strength Training", type: 3, description: "Weightlifting or resistance-based workouts." },
  { name: "Yoga / Stretching", type: 3, description: "Exercises focused on flexibility, balance, and breathing." },
  { name: "Sports", type: 3, description: "Participating in athletic or recreational sports." },
  { name: "Meditation / Mindfulness", type: 3, description: "Mental exercises for relaxation and awareness." },
  { name: "Walking", type: 3, description: "Leisure or brisk walking for exercise or transit." },

  # Creative / Hobbies (ActivityType: 4)
  { name: "Drawing / Painting", type: 4, description: "Creating visual artwork using various mediums." },
  { name: "Music", type: 4, description: "Listening to or creating music with instruments or software." },
  { name: "Crafting / DIY", type: 4, description: "Making items by hand or working on home projects." },
  { name: "Photography", type: 4, description: "Taking and editing photos." },
  { name: "Cooking / Baking", type: 4, description: "Preparing food creatively as a hobby." },
  { name: "Gaming", type: 4, description: "Playing video or tabletop games for entertainment." },

  # Home & Chores (ActivityType: 5)
  { name: "Cleaning", type: 5, description: "Tidying or deep cleaning living spaces." },
  { name: "Laundry", type: 5, description: "Washing, drying, or folding clothes." },
  { name: "Cooking", type: 5, description: "Preparing meals (non-hobby related)." },
  { name: "Grocery Shopping", type: 5, description: "Buying food and household supplies." },
  { name: "Maintenance / Repairs", type: 5, description: "Fixing or maintaining home appliances and systems." },
  { name: "Organizing", type: 5, description: "Arranging or decluttering belongings and spaces." },

  # Social & Relationships (ActivityType: 6)
  { name: "Family Time", type: 6, description: "Spending quality time with family members." },
  { name: "Hanging Out with Friends", type: 6, description: "Casual or planned socializing with friends." },
  { name: "Dating / Romantic Time", type: 6, description: "Spending time with a partner or romantic interest." },
  { name: "Volunteering", type: 6, description: "Helping with community service or charitable causes." },
  { name: "Social Media", type: 6, description: "Browsing or posting on social platforms." },

  # Rest & Leisure (ActivityType: 7)
  { name: "Watching TV / Movies", type: 7, description: "Streaming or watching entertainment content." },
  { name: "Listening to Podcasts", type: 7, description: "Enjoying audio shows for entertainment or education." },
  { name: "Browsing the Internet", type: 7, description: "Casual online surfing or reading." },
  { name: "Napping", type: 7, description: "Short periods of rest or sleep." },
  { name: "Relaxing", type: 7, description: "Unstructured time to unwind or do nothing in particular." },

  # Finance & Admin (ActivityType: 8)
  { name: "Budgeting / Expense Tracking", type: 8, description: "Monitoring and planning personal or household finances." },
  { name: "Paying Bills", type: 8, description: "Settling financial obligations and invoices." },
  { name: "Banking / Financial Planning", type: 8, description: "Managing accounts, savings, or investments." },
  { name: "Filing / Paperwork", type: 8, description: "Organizing documents or handling administrative forms." },

  # Errands & Transportation (ActivityType: 9)
  { name: "Commuting", type: 9, description: "Traveling to and from work or other regular locations." },
  { name: "Driving", type: 9, description: "Operating a vehicle for work or personal use." },
  { name: "Public Transport", type: 9, description: "Using buses, trains, or other shared transit systems." },
  { name: "Running Errands", type: 9, description: "Completing tasks like dropping off items or picking things up." },

  # Travel (ActivityType: 10)
  { name: "Trip Planning", type: 10, description: "Researching and organizing travel logistics." },
  { name: "Packing", type: 10, description: "Preparing items for a trip or move." },
  { name: "Traveling", type: 10, description: "Being in transit by car, train, plane, etc." },
  { name: "Exploring / Sightseeing", type: 10, description: "Visiting places or attractions during travel." }
]

activities.each do |activity|
  Activity.create(
    ActivityName: activity[:name],
    Description: activity[:description],
    ActivityType: activity[:type]
  )
end