require "csv/import_program_csv"
require "csv/import_school_csv"

# import = ImportSchoolCSV.new(file: "lib/csv/data/school_sample_data.csv")

import = ImportProgramCSV.new(path: "lib/csv/data/program_tags_sample.csv")

import.run!
