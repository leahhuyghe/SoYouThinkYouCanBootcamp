class ImportProgramCSV
  include CSVImporter

  model Program

  column :name
  column :duration_days
  column :price
  column :max_class_size
  column :full_time
  column :format
  column :school_id

  identifier :name

  when_invalid :abort

end
