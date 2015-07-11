class ImportTagsCSV
  include CSVImporter

  model Tag

  column :program_name
  column :school_id
  column :tags

  identifier :id

  when_invalid :abort

end
