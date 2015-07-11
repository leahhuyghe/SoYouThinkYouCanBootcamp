require "csv/import_program_csv"
require "csv/import_school_csv"
require "csv/import_tags_csv"

import = ImportSchoolCSV.new(path: "lib/csv/data/school_sample_data.csv")
import.run!

import = ImportProgramCSV.new(path: "lib/csv/data/program_sample_data.csv")
import.run!

import = ImportTagsCSV.new(path: "lib/csv/data/program_tags_sample.csv")
import.run!
