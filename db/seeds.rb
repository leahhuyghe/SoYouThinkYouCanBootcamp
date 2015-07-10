require "csv/import_program_csv"
require "csv/import_school_csv"

# import = ImportSchoolCSV.new(file: "lib/csv/data/school_sample_data.csv")

import = ImportProgramCSV.new(path: "lib/csv/data/program_tags_sample.csv")

import.run!

 ["Rails", "jQuery", "APIs", "Sinatra", "Heroku", "Object Oriented Programming", "ReactJS", "Javascript", "RSPEC", "TDD", "Fundamental Ruby", "HTML", "CSS", "Rails MVC Pattern", "RESTful Architecture", "Rails Database Design", "Testing Models", "API Testing", "Capybara", "Ruby", "Bootstrap Design", "DOMScripting", "User Experience", "Visual Design", "Java", "Android", "Material Design", "Objective-C", "Swift", "iOS", "Nodejs", "Functional Programming", "Unix", "Git", "Web Development Tools", "Xcode", "Cocoa", "UIKit", "Python", "Django", "Flask", "Pyramid", "JavaScript Development Ecosystem", "Collaboration", "AdvancedHTML5", "CSS3", "Sass", "AdvancedCSS", "Server Environments", "OpenSource", "ObjectOrientedDesign & Modeling", "Design Principles", "Illustrator", "Photoshop", "UX", "Web Development Foundation", "LampStack", "Mean Stack", "RubyonRails", "Lamp", "Mean", "MongoDB", "AngularJS", "Objective C", "iOS SDK", "AppleWatch", "MVPs", "Technical Project Management", "User-Centered Design", "User Research", "Interaction&InterfaceDesign", "Prototyping & Testing", "Product Development", "Front-End Web Development", "Back-End Web Development", "Data Cleaning and Collection", "Data Analysis", "Data Communication", "Modelling Techniques", "Digital Marketing", "Marketing Analytics", "GitHub", "App Interfaces", "iOS Applications", "UX Design", "Product Management", "UX Foundation", "Web Design", "Responsive Design", "Web Typography", "NPM", "AJAX", "JSON", "Taskrunners", "Computer Programming", "Command Line", "Pair Programming", "SQL", "DOM", "CSVs", "OOP"].each do
  |name|
  Tag.create(name: name)
end
