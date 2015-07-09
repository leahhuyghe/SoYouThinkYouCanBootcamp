# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# codecore = School.create(name: 'CodeCore',)


# web_development = Program.create(name: 'Web Development', school: codecore, duration: 9,  )

import = ImportSchoolCSV.new(file: "lib/csv/data/school_sample_data.csv")
