# Habit Tracker Introduction
This application is a simple activity/to-do tracker to help track the user weekly task. The simple GUI and layout allows the user to effortless create an account, activity/task and a custom activity that not already listed in the application allowing for a detial description of the activity/task.

# Installation
Installating and deployment of this application.

Clone the repo into your development environment.
`git clone https://github.com/j-salguero/CSCE606-Project1.git`

## 1.Enviroment setup
## Verify the correct version of Ruby, Rails, Heroku, and End of Line(EOF)
This application use the following framework versions and Visual Studio Code for IDE:
1. Check Ruby version `ruby -v`. Application uses ruby version 3.4.5.  If the version is not install, use `rbenv install 3.4.5` and then setting local ruby to 3.4.5, `rbenv local 3.4.5`. Consult [Ruby installation website](https://www.ruby-lang.org/en/documentation/installation/) for troubleshooting. 
2. Check Rails version `rails -v`. Application uses rails version 8.0.3. If rails is not installed, install from GemFile, `gem install rails`.
3. Check if heroku is installed, `heroku -v`. If heroku is not install, install using the [heroku installation guide](https://devcenter.heroku.com/articles/heroku-cli).
4. Verify EOF format. Open application in VS Code and under setting, search Editor:Files: Eol. Setting should be set to auto or LF for deployment. Different version between Windows(CRLF) and Linux/Heroku(LF) will cause mismatch in configuration and cause issues when working on cross platforms.

## Setting up Ruby on Rails within the Application
1. Execute `bundle install` to install all all the required gem need for the application.
2. Execute `rails db:migrate` to apply all migrations and setup the database
3. Execute `rails db:seed` to populate the database.
4. Application is up and ready for testing and devolpment. 
5. Git add and commit. `Git add . && git commit -m "insert comment here"
 
## Deploying Application to Heroku
1. Login into heroku by executing `heroku login`
2. Push the application repo to heroku, `git push heroku main`
3. Apply database migrations, `heroku run rails db:migrate`
4. Populate the database, `heroku run rails:seed`

# Setup and Deployment completed.
The application should be up and running ready for user to start tracking their weekly activities. On how to navigate and use the application, refer to the [user manual](HabitTracker_UserGuide.pdf)


