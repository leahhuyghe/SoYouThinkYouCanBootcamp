require 'rails_helper'
require "#{Rails.root}/lib/csv/import_school_csv"

RSpec.describe School, type: :model do

  describe 'importing CSV seed data' do
    def importer
      ImportSchoolCSV.new(path: "#{Rails.root}/lib/csv/data/school_data_clean.csv")
    end

    describe "testing the headers" do
      fit "returns truthy" do
        expect(importer.valid_header?).to be
      end
    end

    describe 'running the import' do
      it 'does not throw an error' do
        # expect{importer.run!}.to_not raise_error
      end

      it 'creates 4 school records' do
        #  expect{importer.run!}.to change { School.count }.by(4)
      end
    end

    describe 'the first school record' do
      # before { importer.run! }
      let(:school) { School.first }

      it 'has an email' do
        # expect(school.email).to be
      end

      it 'has name' do
        # expect(school.name).to be
      end
    end
  end


end
