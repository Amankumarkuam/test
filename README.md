

Ruby can be installed by following the instruction from the official documentation 

https://github.com/rbenv/rbenv

The framework is developed using cucumber, capybara and rest api client automation

reference:

https://github.com/cucumber/cucumber-ruby

https://github.com/teamcapybara/capybara

Step by step instruction for running the test:

1. This project is developed using ruby version 3.1.0
2. Install the ruby and check the version
3. Under the homefolder where Gem file is located run bundle install
4. All the dependecy files will be installed.
5. download the chrome driver from https://chromedriver.chromium.org/downloads and from the download location right click and open to make it run  chromedriver and terimate the window after it is open.
6. run the cucumber test by running the command "cucumber" keyword in the terminal
7. Report folder will be created and the html report will be stored in the report folder once automation is run.


Project is integrated with Rest API testing:

Steps to run API test:
1. Open the feature file and check for the use case for API
2. Change the test data by changing name and email test data in the feature file for both create user step and update user step
3. Run "cucumber" command in the terminal
4. Check the results report in "Report folder"


