class ImportSchoolCSV
  include CSVImporter

  model School

  column :id
  column :name
  column :description
  column :website
  column :email, to: ->(email) { email.downcase }, required: true
  column :street_address
  column :city
  column :country
  column :postal_code
  column :facebook
  column :twitter
  column :phone_number

  identifier :id

  when_invalid :abort

end
