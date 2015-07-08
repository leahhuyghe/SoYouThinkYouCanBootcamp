# This code will import school and program data from CSV spreadsheets.

results = CsvMapper.import('/path/to/file.csv') do
  map_to School # Map to the School ActiveRecord class (defined above) instead of the default Struct.
  after_row lambda{|row, school| school.save }  # Call this lambda and save each record after it's parsed.
  start_at_row 1

  [name, description, website, email, street_address, city, country, postal_code, facebook, twitter, phone_number]
end

results = CsvMapper.import('/path/to/file.csv') do
  map_to Program # Map to the Program ActiveRecord class (defined above) instead of the default Struct.
  after_row lambda{|row, program| program.save }  # Call this lambda and save each record after it's parsed.
  start_at_row 1

  [name, duration_days, price, max_class_size, full_time, school_id]
end
