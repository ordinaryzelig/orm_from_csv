require 'spec_helper'

describe ORMFromCSV do

  it 'should instantiate new objects by importing a CSV file' do
    Movie.from_csv(csv_file).map(&:attributes).should =~ expected_attributes_from_movies_csv
  end

end
