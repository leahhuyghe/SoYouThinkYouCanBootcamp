class ImportProgramCSV
  include CSVImporter

  model Program

  column :name, as: ["program_name"]
  column :duration_weeks, as: ["duration_weeks"]
  column :price, as: ["price"]
  column :max_class_size, as: ["max_class_size"]
  column :full_time
  column :format
  column :school_id

  identifier :id

  when_invalid :abort

end
